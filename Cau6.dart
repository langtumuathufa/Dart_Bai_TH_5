import 'dart:io';

void main() {
    var file = File('hello_copy.txt');
    if (file.existsSync()) {
        file.deleteSync();
        print('đã xóa file');
    } else {
        print('không có file để xóa');
    }
}