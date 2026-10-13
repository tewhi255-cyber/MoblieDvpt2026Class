// Stage 3: variables and data types.
void main() {
  // Profile variables
  const schoolName = 'Golden Ishimwe'; // fixed before running
  final studentName = 'White';         // set once
  var age = 17;                        // Dart guesses int
  double height = 1.75;                // decimal number
  bool isBoarding = false;             // true or false
  String? nickname;                    // no value yet (null)

  // Print all 6 variables
  print('School       : $schoolName');
  print('Student      : $studentName');
  print('Age          : $age');
  print('Height       : $height m');
  print('Is boarding  : $isBoarding');
  print('Nickname     : $nickname');

  // Check the inferred types
  print(age.runtimeType);    // int
  print(height.runtimeType); // double
  print(nickname);           // null

  // String two ways: with + and with interpolation
  print(studentName + ' is ' + age.toString() + ' years old.');
  print('$studentName is $age years old.');

  // Numbers and average
  int mathMark = 85;
  int englishMark = 72;
  int scienceMark = 90;

  int total = mathMark + englishMark + scienceMark;
  print('Total           : $total');
  print('Average (/)     : ${total / 3}');  // / gives a double
  print('Average (~/)    : ${total ~/ 3}'); // ~/ gives an int
}
