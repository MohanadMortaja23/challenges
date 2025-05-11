void printInReverse<T>(List<T> list) {
  // ننشئ stack مؤقت
  final stack = <T>[];
  
  // نضع كل العناصر في الـ stack
  for (final item in list) {
    stack.add(item);
  }
  
  // نخرج العناصر من الـ stack حتى يصبح فارغاً
  // نظراً لأن الـ stack يعمل بمبدأ "آخر داخل أول خارج" (LIFO)
  // فإن العناصر ستخرج بالترتيب المعاكس
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

/*
شرح:
1. ننشئ stack فارغ
2. نضيف كل عناصر القائمة إلى الـ stack
3. نزيل العناصر من الـ stack واحداً تلو الآخر ونطبعها
4. بما أن الـ stack يعمل بمبدأ LIFO، ستحصل على العناصر بالترتيب المعاكس
*/