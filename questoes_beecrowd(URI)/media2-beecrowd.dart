import "dart:io";

void main() {
	var A = double.parse(stdin.readLineSync()?? "0");
	var B = double.parse(stdin.readLineSync()?? "0");
	var C = double.parse(stdin.readLineSync()?? "0");

 var pesoA = 2;
 var pesoB = 3;
 var pesoC = 5;


 var media = 
  (A * pesoA + B * pesoB + C * pesoC)/(pesoA+pesoB+pesoC);

 print("MEDIA = $media");

}
