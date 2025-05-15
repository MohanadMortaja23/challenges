// تعريف Stack باستخدام List
class Stack<T> {
  final _list = <T>[]; // القائمة الداخلية

  // دفع عنصر إلى الأعلى
  void push(T value) => _list.add(value);

  // إزالة العنصر من الأعلى
  T pop() => _list.removeLast();

  // الحصول على العنصر في الأعلى
  T get top => _list.last;

  // فحص هل الستاك فارغ
  bool get isEmpty => _list.isEmpty;

  // عدد العناصر
  int get length => _list.length;

  // طباعة محتويات الستاك (للاختبار)
  void printStack() {
    for (var item in _list.reversed) {
      print(item);
    }
  }
}

// =============================
// Challenge 1: Reverse a List
// =============================
List<T> reverseList<T>(List<T> list) {
  Stack<T> stack = Stack<T>();

  // إدخال جميع العناصر في الستاك
  for (var item in list) {
    stack.push(item);
  }

  // إخراج العناصر لعكس الترتيب
  List<T> reversedList = [];
  while (!stack.isEmpty) {
    reversedList.add(stack.pop());
  }

  return reversedList;
}

// =============================
// Challenge 2: Balance the Parentheses
// =============================
bool isBalanced(String input) {
  Stack<String> stack = Stack<String>();

  for (var char in input.split('')) {
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false; // فيه ) بدون ( قبلها
      } else {
        stack.pop();
      }
    }
  }

  return stack.isEmpty;
}

// =============================
// Main Function لتشغيل الاختبارات
// =============================
void main() {
  // Challenge 1: اختبار عكس قائمة
  print("Challenge 1: Reverse a List");
  List<int> numbers = [1, 2, 3, 4, 5];
  print("القائمة الأصلية: $numbers");
  var reversed = reverseList(numbers);
  print("القائمة بعد العكس: $reversed\n");

  // Challenge 2: اختبار موازنة الأقواس
  print("Challenge 2: Balance the Parentheses");
  String test1 = "(())()";
  String test2 = "(()))(";
  print("Test 1: $test1 → ${isBalanced(test1) ? 'موزونة ✅' : 'غير موزونة ❌'}");
  print("Test 2: $test2 → ${isBalanced(test2) ? 'موزونة ✅' : 'غير موزونة ❌'}");
}
