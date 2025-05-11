bool checkParentheses(String text) {
  // نستخدم stack لتتبع الأقواس المفتوحة
  final stack = <String>[];
  
  for (var i = 0; i < text.length; i++) {
    final char = text[i];
    if (char == '(') {
      // إذا وجدنا قوساً مفتوحاً نضيفه إلى الـ stack
      stack.add(char);
    } else if (char == ')') {
      // إذا وجدنا قوساً مغلقاً
      if (stack.isEmpty) {
        // إذا كان الـ stack فارغاً فهذا يعني وجود قوس مغلق بدون مفتوح
        return false;
      } else {
        // نزيل القوس المفتوح المقابل من الـ stack
        stack.removeLast();
      }
    }
  }
  
  // إذا كان الـ stack فارغاً فالأقواس متوازنة
  return stack.isEmpty;
}

/*
شرح:
1. نمر على كل حرف في النص
2. عندما نجد قوساً مفتوحاً '(' نضيفه إلى الـ stack
3. عندما نجد قوساً مغلقاً ')' نزيل آخر قوس مفتوح من الـ stack
4. إذا وجدنا قوساً مغلقاً والـ stack فارغ، فهذا يعني عدم التوازن
5. في النهاية إذا كان الـ stack فارغاً فالأقواس متوازنة
*/