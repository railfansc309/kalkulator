import 'dart:io';

void main() {
  while (true) {
    print('Kalkulator Sederhana');
    print('1. Penjumlahan');
    print('2. Pengurangan');
    print('3. menghitung luas jajar genjang');
    print('4. menghitung luas segitiga');
    print('5. Keluar');

    stdout.write('Pilih operasi (1-5): ');
    String pilihan = stdin.readLineSync() ?? '';

    if (pilihan == '5') {
      print('Terima kasih, keluar dari program.');
      break;
    }

    if (pilihan != '1' && pilihan != '2' && pilihan != '3' && pilihan != '4') {
      print('Pilihan tidak valid. Silakan pilih 1-5.');
      continue;
    }

    double result = 0;

    switch (pilihan) {
      case '1':
        stdout.write('Masukkan angka pertama: ');
        double angka1 = double.parse(stdin.readLineSync() ?? '0.0');

        stdout.write('Masukkan angka kedua: ');
        double angka2 = double.parse(stdin.readLineSync() ?? '0.0');

        result = angka1 + angka2;
        print('Hasil: $result');
        break;
      case '2':
        stdout.write('Masukkan angka pertama: ');
        double angka1 = double.parse(stdin.readLineSync() ?? '0.0');

        stdout.write('Masukkan angka kedua: ');
        double angka2 = double.parse(stdin.readLineSync() ?? '0.0');

        result = angka1 - angka2;
        print('Hasil: $result');
        break;
      case '3':
        stdout.write('Masukkan alas jajar genjang: ');
        double angka1 = double.parse(stdin.readLineSync() ?? '0.0');

        stdout.write('Masukkan tinggi jajar genjang: ');
        double angka2 = double.parse(stdin.readLineSync() ?? '0.0');
        result = angka1 * angka2;
        print('Hasil: $result');
        break;
      case '4':
        stdout.write('Masukkan alas segitiga: ');
        double angka1 = double.parse(stdin.readLineSync() ?? '0.0');

        stdout.write('Masukkan tinggi segitiga: ');
        double angka2 = double.parse(stdin.readLineSync() ?? '0.0');
        result = 0.5 * angka1 * angka2;
        print('Hasil: $result');
        break;
    }
  }
}
