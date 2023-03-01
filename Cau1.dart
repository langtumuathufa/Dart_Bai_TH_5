import 'dart:io';

void main() {
    var file = File('hello.txt').openSync(mode: FileMode.append);
    stdout.write('Nhap ten: ');
    var name = stdin.readLineSync();
    file.writeStringSync('$name\n');
    file.closeSync();
    print('Thanh Cong !');
}