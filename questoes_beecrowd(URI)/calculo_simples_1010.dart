import 'dart:io';

main() {
  var peca1,numeroPecas1,valorPecas1 = stdin.readLineSync().toString().split(" ");


  print(peca1);
  print(numeroPecas1);
  print(valorPecas1);


}

/*import 'dart:io';

main() {
  var peca1 = stdin.readLineSync()?? "0";
  var numeroPecas1 = int.parse(stdin.readLineSync() ?? "0");
  var valorPecas1 = double.parse(stdin.readLineSync() ?? "0");

  var totalPecas1 = numeroPecas1 * valorPecas1;

  var peca2 = stdin.readLineSync()?? "0";
  var numeroPecas2 = int.parse(stdin.readLineSync() ?? "0");
  var valorPecas2 = double.parse(stdin.readLineSync() ?? "0");

  var totalPecas2 = numeroPecas2 * valorPecas2;

  print("VALOR A PAGAR: R\$${(totalPecas1 + totalPecas2).toStringAsFixed(2)}");
}
*/
