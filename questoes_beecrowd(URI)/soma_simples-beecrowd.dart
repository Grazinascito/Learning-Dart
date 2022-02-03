import "dart:io";

void main() {
	var A = stdin.readLineSync()?? "";
	var B = stdin.readLineSync()?? "";

  var SOMA = int.parse(A) + int.parse(B);
print("SOMA = $SOMA");
}
