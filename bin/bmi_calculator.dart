import 'dart:io';

void main() {
  print('Qual é o seu nome?');
  String? nome = stdin.readLineSync();
  print('Qual é a sua idade?');
  String? idade = stdin.readLineSync();
  print('Qual é a sua altura?');
  String? altura = stdin.readLineSync();
  print('Qual é o seu peso?');
  String? peso = stdin.readLineSync();

  int idade1 = int.parse(idade!);
  double altura1 = double.parse(altura!);
  double peso1 = double.parse(peso!);
  double imc = peso1 / (altura1 * altura1);
  String frase =
      ' O(a) Sr.(a) $nome, tem $idade1 anos de idade e seu IMC é: $imc, ou seja, ';

  switch (imc) {
    case < 16.9:
      {
        print('$frase muito abaixo do peso');
      }
      break;
    case >= 17 && <= 18.4:
      {
        print('$frase abaixo do peso');
      }
      break;
    case >= 18.5 && <= 24.9:
      {
        print('$frase peso normal');
      }
      break;
    case >= 25 && <= 29.9:
      {
        print('$frase acima do peso');
      }
      break;
    case >= 30 && <= 34.9:
      {
        print('$frase Obesidade grau I');
      }
      break;
    case >= 35 && <= 40:
      {
        print('$frase Obesidade grau II');
      }
      break;
    case > 40:
      {
        print('$frase Obesidade grau 3');
      }
      break;
  }
}