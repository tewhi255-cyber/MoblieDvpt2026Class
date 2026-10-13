// Final Report Card (Stage 6)

// const: fixed before running
const String schoolName = 'Golden Ishimwe School';

// final: set once
final String studentName = 'White';

// var: can change
var age = 17;

// List of 10 marks
List<int> marks = [65, 48, 90, 72, 55, 30, 81, 95, 42, 68];

// Return a letter grade with if / else if / else
String gradeOf(int mark) {
  if (mark >= 80) {
    return 'A';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 60) {
    return 'C';
  } else if (mark >= 50) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  // Header
  print('=============================');
  print('  SMART STUDENT TRACKER');
  print('  School : $schoolName');
  print('  Student: $studentName (Age: $age)');
  print('=============================');

  // Totals with a for-in loop
  int total = 0;
  int highest = marks[0];
  int lowest = marks[0];
  int passed = 0;
  int failed = 0;

  for (var m in marks) {
    total += m;
    if (m > highest) highest = m;
    if (m < lowest) lowest = m;
    if (m >= 50) {
      passed++;
    } else {
      failed++;
    }
  }

  double average = total / marks.length;

  // One line per mark (classic for + continue)
  for (int i = 0; i < marks.length; i++) {
    int m = marks[i];
    if (m < 0 || m > 100) {
      continue;
    }
    print(' ${i + 1} | $m | ${gradeOf(m)}');
  }

  // Summary
  print('-----------------------------');
  print('Total: $total   Average: ${average.toStringAsFixed(2)}');
  print('Highest: $highest   Lowest: $lowest');
  print('Passed: $passed   Failed: $failed');

  // Overall result with if / else
  String overall;
  if (average >= 50) {
    overall = 'PASS';
  } else {
    overall = 'FAIL';
  }
  print('Overall result: $overall');

  // switch: remark from the letter grade
  String remark;
  switch (gradeOf(average.round())) {
    case 'A':
      remark = 'Excellent work!';
      break;
    case 'B':
      remark = 'Very good.';
      break;
    case 'C':
      remark = 'Good, keep pushing.';
      break;
    case 'D':
      remark = 'You passed, keep improving.';
      break;
    default:
      remark = 'Needs more practice.';
  }
  print('Remark: $remark');
  print('=============================');
}
