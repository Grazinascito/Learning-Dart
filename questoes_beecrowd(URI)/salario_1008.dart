import "dart:io";

main() {
  var funcionarioNum = int.parse(stdin.readLineSync() ?? "0");
  var horasTrab = int.parse(stdin.readLineSync() ?? "0");
  var valorHoras = double.parse(stdin.readLineSync() ?? "0");

  var salary = horasTrab * valorHoras;

  print("NUMBER = $funcionarioNum");
  print("SALARY = U\$ ${salary.toStringAsFixed(2)}");
}
