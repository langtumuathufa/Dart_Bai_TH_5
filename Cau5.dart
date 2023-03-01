import 'dart:io';

void main() {
  for (var i = 1; i <= 100; i++) {
    var fileName = 'file_$i.txt';
    var file = File('./100File/$fileName');
    file.createSync();
  }

  print('100 file đã được tạo thành công');
}