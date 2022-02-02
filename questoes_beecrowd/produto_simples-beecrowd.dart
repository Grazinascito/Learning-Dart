import "dart:io";

void main() {
	var A = stdin.readLineSync()?? "";
	var B = stdin.readLineSync()?? "";

  var PROD = int.parse(A) * int.parse(B);

  print("PROD = $PROD");
}
