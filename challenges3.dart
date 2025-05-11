Node<E>? reverseList<E>(Node<E>? head) {
  Node<E>? prev = null;
  Node<E>? current = head;
  Node<E>? next;
  
  while (current != null) {
    // نحفظ المرجع للعقدة التالية
    next = current.next;
    
    // نعكس اتجاه المؤشر
    current.next = prev;
    
    // نحرك المؤشرات للأمام
    prev = current;
    current = next;
  }
  
  // تصبح prev رأس القائمة الجديدة
  return prev;
}

/*
شرح:
1. نستخدم ثلاث مؤشرات: prev, current, next
2. في كل خطوة، نغير اتجاه المؤشر next للعقدة الحالية
3. نحرك المؤشرات للأمام حتى نهاية القائمة
4. في النهاية يصبح prev رأس القائمة المعكوسة
*/