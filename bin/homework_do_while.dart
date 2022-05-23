import 'dart:io';

void main(List<String> arguments) {
//1
  print('Регистрация\nВведите логин:');
  String? login = stdin.readLineSync();
  print('Введите пароль');
  String? password = stdin.readLineSync();
  print('Регистрация прошла успешно');
  print('Введите пароль от $login');
  bool result = false;

  do {
    String? passwordEntry = stdin.readLineSync();

    if (passwordEntry == password) {
      result == true;
      print('Пароль верный');
      break;
    } else {
      print('Повторите ввод');
    }
  } while (result == false);

//2
  bool a = false;
  List nums = [];
  int sum = 0;

  while (a == false) {
    print('Введите числа: \nвведите 0 для получения результата');
    int number = int.parse(stdin.readLineSync()!);
    nums.add(number);
    sum += number;

    if (number == 0) {
      a = true;
    }
  }
  print(nums.length);
  print(sum);
  print(sum / nums.length);

//3
  print('Введите число start:');
  int start = int.parse(stdin.readLineSync()!);
  print('Введите число finish:');
  int finish = int.parse(stdin.readLineSync()!);

  List<int> dia = [];
  int sumDia = 0;
  int i = start;

  while (i < finish) {
    if (i.isOdd) {
      dia.add(i);
      sumDia += i;
    }
    i++;
  }
  print(dia);
  print('Сумма нечетных чисел в диапазоне от $start до $finish = $sumDia');
}
