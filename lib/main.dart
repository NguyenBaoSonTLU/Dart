import 'dart:io';
import 'dart:math';

void main() {
  // Bài 1: Tính số năm đến 100 tuổi
  print('Bài 1:');
  stdout.write('Nhập họ tên: ');
  String name = stdin.readLineSync()!;
  stdout.write('Nhập tuổi: ');
  int age = int.parse(stdin.readLineSync()!);
  int yearsTo100 = 100 - age;
  print('$name, còn $yearsTo100 năm nữa bạn sẽ 100 tuổi');

  // Bài 2: Kiểm tra số chẵn lẻ
  print('\nBài 2:');
  stdout.write('Nhập một số nguyên: ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('$number là số chẵn');
  } else {
    print('$number là số lẻ');
  }

  // Bài 3: Tìm số lớn nhất trong 3 số thực
  print('\nBài 3:');
  stdout.write('Nhập số thực a: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập số thực b: ');
  double b = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập số thực c: ');
  double c = double.parse(stdin.readLineSync()!);
  double max = a;
  if (b > max) max = b;
  if (c > max) max = c;
  print('Số lớn nhất là: $max');

  // Bài 4: Tìm số ngày trong tháng
  print('\nBài 4:');
  stdout.write('Nhập ngày: ');
  int day = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập tháng: ');
  int month = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập năm: ');
  int year = int.parse(stdin.readLineSync()!);
  int daysInMonth;
  switch (month) {
    case 1: case 3: case 5: case 7: case 8: case 10: case 12:
      daysInMonth = 31;
      break;
    case 4: case 6: case 9: case 11:
      daysInMonth = 30;
      break;
    case 2:
      if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        daysInMonth = 29;
      } else {
        daysInMonth = 28;
      }
      break;
    default:
      daysInMonth = 0;
      print('Tháng không hợp lệ');
      return;
  }
  print('Tháng $month năm $year có $daysInMonth ngày');

  // Bài 5: Giải phương trình bậc hai
  print('\nBài 5:');
  stdout.write('Nhập a: ');
  double a2 = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập b: ');
  double b2 = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập c: ');
  double c2 = double.parse(stdin.readLineSync()!);
  if (a2 == 0) {
    if (b2 == 0) {
      if (c2 == 0) {
        print('Phương trình có vô số nghiệm');
      } else {
        print('Phương trình vô nghiệm');
      }
    } else {
      double x = -c2 / b2;
      print('Phương trình có nghiệm x = $x');
    }
  } else {
    double delta = b2 * b2 - 4 * a2 * c2;
    if (delta < 0) {
      print('Phương trình vô nghiệm');
    } else if (delta == 0) {
      double x = -b2 / (2 * a2);
      print('Phương trình có nghiệm kép x = $x');
    } else {
      double x1 = (-b2 + sqrt(delta)) / (2 * a2);
      double x2 = (-b2 - sqrt(delta)) / (2 * a2);
      print('Phương trình có hai nghiệm: x1 = $x1, x2 = $x2');
    }
  }

  // Bài 6: Kiểm tra tam giác
  print('\nBài 6:');
  stdout.write('Nhập cạnh a: ');
  double sideA = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập cạnh b: ');
  double sideB = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập cạnh c: ');
  double sideC = double.parse(stdin.readLineSync()!);
  if (sideA <= 0 || sideB <= 0 || sideC <= 0 ||
      sideA + sideB <= sideC || sideB + sideC <= sideA || sideA + sideC <= sideB) {
    print('Ba số không tạo thành tam giác');
  } else {
    double perimeter = sideA + sideB + sideC;
    double p = perimeter / 2;
    double area = sqrt(p * (p - sideA) * (p - sideB) * (p - sideC));
    
    String triangleType;
    if (sideA == sideB && sideB == sideC) {
      triangleType = 'tam giác đều';
    } else if (sideA == sideB || sideB == sideC || sideA == sideC) {
      triangleType = 'tam giác cân';
    } else if (sideA * sideA + sideB * sideB == sideC * sideC ||
               sideB * sideB + sideC * sideC == sideA * sideA ||
               sideA * sideA + sideC * sideC == sideB * sideB) {
      triangleType = 'tam giác vuông';
    } else {
      triangleType = 'tam giác thường';
    }
    
    print('Ba số tạo thành $triangleType');
    print('Chu vi: $perimeter');
    print('Diện tích: $area');
  }
}