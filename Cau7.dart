import 'dart:io';

void main() {
    var file = File('students.csv');
    var sink = file.openWrite();
    sink.write('Ten,Tuoi,DiaChi\n');
    var students = [
        ['Minh', 21, '484 Lach Tray'],
        ['Thien', 21, '484 Lach Tray'],
        ['Hoang', 19, '484 Lach Tray'],
    ];
    for (var student in students) {
        sink.write('${student[0]},${student[1]},${student[2]}\n');
    }
    sink.close();
    var lines = file.readAsLinesSync();
    var data = [];
    for (var line in lines.skip(1)) {
        var fields = line.split(',');
        var name = fields[0];
        var age = int.parse(fields[1]);
        var address = fields[2];
        data.add([name, age, address]);
    }
    for (var student in data) {
        print('ten: ${student[0]}, tuoi: ${student[1]}, diachi: ${student[2]}.');
    }
}