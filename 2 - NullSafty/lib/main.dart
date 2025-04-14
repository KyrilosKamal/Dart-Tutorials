void main() {
  /**
   * in this case the variable will be printed
   * String name = "Kyrillos";
   * print(name);
*/

  /**
   * in this camse it will give an error output asing for a value to be assigned to the variable name 
   * so to solve this problem and avoid such an error we can add a '?' mark to tell the editor
   * this is might be a null value.
   * 
   * but the main problem in a specific scenario would come if we use .length method to the name
   * when it have a null value, this won't be worth and the compiler would pop an error output.
   * So to turn around the compiler we could use a '!' after to assure to compilter that this is not a null
   * so it would be like this
   * pring(name!.length);
   * the program in this case would be terminated but the error will come to the terminal. 
  */
  //String? name;
  //print(name);
}
