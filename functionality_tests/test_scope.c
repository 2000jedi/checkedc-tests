int main() {

  int arr _Checked[5];
  int len = 5;

  do {
    _Array_ptr<int> dest : count(len) = arr;
  } while (0);
  
  /* `dest` already runs out of scope
   * the following command does not compile
   * dest[0] = 1;
  */

  len = 4;
  /* `len` should not affect `dest`
   * as the latter variable is no longer visible
   */

  return 0;
}
