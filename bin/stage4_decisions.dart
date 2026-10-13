// Stage 4: making decisions.
// Return a letter grade for an average.
String gradeOf(double average) {
  if (average >= 80) {
    return 'A';
  } else if (average >= 70) {
    return 'B';
  } else if (average >= 60) {
    return 'C';
  } else if (average >= 50) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  int mathMark = 85;
  int englishMark = 72;
  int scienceMark = 90;

  // Reject invalid marks
  if (mathMark < 0 || mathMark > 100 ||
      englishMark < 0 || englishMark > 100 ||
      scienceMark < 0 || scienceMark > 100) {
    print('Invalid mark');
    return;
  }

  double average = (mathMark + englishMark + scienceMark) / 3;

  // Pass or fail
  if (average >= 50) {
    print('PASS');
  } else {
    print('FAIL');
  }

  // Show the grade
  print('Average: ${average.toStringAsFixed(2)} -> Grade: ${gradeOf(average)}');

  print('-------------------------------------------');
  print('Test 5 different sets of marks');
  print('-------------------------------------------');

  // Five [math, english, science] test sets
  List<List<int>> tests = [
    [85, 72, 90],
    [75, 70, 74],
    [60, 65, 62],
    [55, 50, 52],
    [30, 40, 45],
  ];

  // Print each test result
  for (var set in tests) {
    double avg = (set[0] + set[1] + set[2]) / 3;
    String result = avg >= 50 ? 'PASS' : 'FAIL';
    print('Marks: ${set[0]}, ${set[1]}, ${set[2]} | '
        'Average: ${avg.toStringAsFixed(1)} | '
        'Grade: ${gradeOf(avg)} | $result');
  }

  // Switch menu
  int choice = 2;
  switch (choice) {
    case 1:
      print('View profile');
      break;
    case 2:
      print('View marks');
      break;
    case 3:
      print('View grade');
      break;
    default:
      print('Invalid option');
  }
}
