Node<E>? removeAll<E>(Node<E>? head, E value) {
  // نتعامل مع الحالة التي يبدأ فيها الرأس بالقيمة المطلوب إزالتها
  while (head != null && head.value == value) {
    head = head.next;
  }
  
  var current = head;
  
  while (current?.next != null) {
    if (current?.next?.value == value) {
      // نتجاوز العقدة التالية إذا كانت قيمتها مساوية للقيمة المطلوبة
      current?.next = current.next?.next;
    } else {
      // نتحرك للعقدة التالية
      current = current?.next;
    }
  }
  
  return head;
}

/*
شرح:
1. أولاً نتعامل مع الحالة التي تكون فيها العقدة الأولى هي المطلوب إزالتها
2. نمر على القائمة ونقارن قيمة كل عقدة تالية بالقيمة المطلوبة
3. إذا تطابقت القيمة، نتجاوز هذه العقدة بربط العقدة الحالية بما بعد التالية
4. نستمر حتى نهاية القائمة
*/