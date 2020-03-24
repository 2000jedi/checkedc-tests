/*
 * Created by Junhan Duan (2020.3.21)
 * Parts of code are from www.geeksforgeeks.org
 *
 * This is a server side implementation of UDP client-server model testing the functionality of
 * modified udp_input() and udp_output() functions.
 */
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
  
#define PORT        8080
#define BUFFSIZE    1024
  
/* The driver code of udp server, this program should be running first and in the background */
int main(int argc, char *argv[]) {
    int sockfd, len, n;
    char buffer[BUFFSIZE];
    char *msg = "Message from server";
    struct sockaddr_in servaddr, cliaddr;
      
    /* Creating socket file descriptor */
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    /* Allocating space for socket address */
    bzero(&servaddr, sizeof(servaddr));
    bzero(&cliaddr, sizeof(cliaddr));

    /* Filling server information */
    servaddr.sin_family = AF_INET;  /* IPv4 */
    servaddr.sin_addr.s_addr = INADDR_ANY;  /* INADDR_ANT = 0.0.0.0, aiming local machine */
    servaddr.sin_port = htons(PORT);    /* local host with port 8080 */

    /* Bind the socket with the server address */
    if (bind(sockfd, (const struct sockaddr *)&servaddr, sizeof(servaddr)) < 0 ) {
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    /* Recevice message from the client socket, tests udp_input() */
    n = recvfrom(sockfd, buffer, BUFFSIZE, MSG_WAITALL,
                    (struct sockaddr *) &cliaddr, &len);
    buffer[n] = '\0';   /* eos */
    printf("Client : %s\n", buffer);

    /* Send message to client socket, tests udp_output() */
    sendto(sockfd, (const char *)msg, strlen(msg), 0,
                        (const struct sockaddr *) &cliaddr, sizeof(cliaddr));
    printf("Hello message sent.\n");

    return 0;
}
