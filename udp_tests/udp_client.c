/*
 * Created by Junhan Duan (2020.3.21)
 * Parts of code are from www.geeksforgeeks.org
 *
 * This is a client side implementation of UDP client-server model testing the functionality of
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

/* The driver code of udp client, this program should be running after the server is established */
int main() {
    int sockfd, n, len;
    char buffer[BUFFSIZE];
    char *msg = "Message sent from client";
    struct sockaddr_in servaddr;
  
    /* Creating socket file descriptor */
    if ((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    } 

    /* Allocating space for socket address */
    bzero(&servaddr, sizeof(servaddr));
      
    /* Filling server information */
    servaddr.sin_family = AF_INET;  /* IPv4 */
    servaddr.sin_addr.s_addr = INADDR_ANY;  /* INADDR_ANT = 0.0.0.0, aiming local machine */
    servaddr.sin_port = htons(PORT);    /* local host with port 8080 */

    /* Send message to server socket, tests udp_output() */
    sendto(sockfd, (const char *)msg, strlen(msg),
                        0, (const struct sockaddr *) &servaddr, sizeof(servaddr));
    printf("Client : Message sent to server\n");
    
    /* Recevice message from the server socket, tests udp_input() */
    n = recvfrom(sockfd, buffer, BUFFSIZE, MSG_WAITALL,
                    (struct sockaddr *) &servaddr, &len);
    buffer[n] = '\0';
    printf("Client : %s\n", buffer);
  
    close(sockfd);
    return 0;
}
