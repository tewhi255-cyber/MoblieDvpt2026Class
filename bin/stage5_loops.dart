// Stage 5: loops.
// Return a letter grade for a mark.
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
  // 5.1 for loop: multiplication table of 7
  print('--- 5.1 Multiplication table of 7 ---');
  for (int i = 1; i <= 12; i++) {
    print('7 x $i = ${7 * i}');
  }

  // List of marks
  List<int> marks = [65, 48, 90, 72, 55, 30, 81, 92, 42, 68];

  // 5.2 for-in: total, highest, lowest, average
  print('--- 5.2 Totals with for-in ---');
  int total = 0;
  int highest = marks[0];
  int lowest = marks[0];
  for (var m in marks) {
    total += m;
    if (m > highest) highest = m;
    if (m < lowest) lowest = m;
  }
  double average = total / marks.length;
  print('Total: $total');
  print('Highest: $highest');
  print('Lowest: $lowest');
  print('Average: ${average.toStringAsFixed(2)}');

  // 5.3 while: count pass and fail
  print('--- 5.3 Pass / fail count with while ---');
  int passed = 0;
  int failed = 0;
  int index = 0;
  while (index < marks.length) {
    if (marks[index] >= 50) {
      passed++;
    } else {
      failed++;
    }
    index++;
  }
  print('50 or more: $passed');
  print('Below 50  : $failed');

  // 5.4 do-while: always runs at least once
  print('--- 5.4 do-while countdown ---');
  int choice = 3;
  do {
    print('Menu number: $choice');
    choice--;
  } while (choice > 0);

  // 5.5 continue: skip failing marks
  print('--- 5.5 continue: passing marks only ---');
  for (var m in marks) {
    if (m < 50) {
      continue;
    }
    print(m);
  }

  // 5.5 break: stop at first mark above 85
  print('--- 5.5 break: first mark above 85 ---');
  for (var m in marks) {
    if (m > 85) {
      print('First mark above 85: $m');
      break;
    }
  }

  // 5.6 challenge: mark and grade per line
  print('--- 5.6 Mark -> Grade ---');
  for (var m in marks) {
    print('Mark: $m -> Grade: ${gradeOf(m)}');
  }
}
