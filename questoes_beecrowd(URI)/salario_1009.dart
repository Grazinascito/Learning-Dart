import 'dart:io';

void main() {
  String name = stdin.readLineSync().toString();
  var fixSalary = double.parse(stdin.readLineSync() ?? "0");
  var salesMade = double.parse(stdin.readLineSync() ?? "0");

  var total = fixSalary + (salesMade * 0.15);

  print("TOTAL = R\$ ${total.toStringAsFixed(2)}");
}
