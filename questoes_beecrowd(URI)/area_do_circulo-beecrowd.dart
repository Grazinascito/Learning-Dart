import 'dart:io';
import 'dart:math';

void main() {
	var n = 3.14159;

  var raio = stdin.readLineSync()?? "0";

  var area = n * pow(double.parse(raio), 2);
  
  print("A=${area.toStringAsFixed(4)}");
  
}