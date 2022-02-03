import "dart:io";
import "dart:math";

void main() {
	var A = double.parse(stdin.readLineSync()?? "0");
	var B = double.parse(stdin.readLineSync()?? "0");

  var peso1 = 3.5;
  var peso2 = 7.5;
  var somaPesos = peso1 + peso2;


  var MEDIA = ((A * peso1) + (B * peso2))/somaPesos;

  print("MEDIA = ${MEDIA.toStringAsFixed(5)}");
}
