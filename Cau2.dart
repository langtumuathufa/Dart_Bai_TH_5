import 'dart:io';

void main() {
  var namesFile = File('names.txt');
  var names = namesFile.readAsLinesSync();
  stdout.write('Ten cua ban be: ');
  var friendName = stdin.readLineSync();
  names.add(friendName!);
  namesFile.writeAsStringSync(names.join('\n'));
  print('Thanh cong !');
}