import 'dart:io';

void main() {
  var A = stdin.readLineSync()?? "0";
  var B = stdin.readLineSync()?? "0";


  var X = int.parse(A) + int.parse(B);
  print("X = $X");
 
}
