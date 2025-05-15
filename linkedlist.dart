// تعريف Node (عنصر في القائمة)
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

// تعريف Linked List
class LinkedList<T> {
  Node<T>? head;

  // إضافة عنصر في نهاية القائمة
  void append(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node<T>? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  // طباعة القائمة بشكل عادي
  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Challenge 1: طباعة القائمة بالعكس
  void printInReverse() {
    void _printReverse(Node<T>? node) {
      if (node == null) return;
      _printReverse(node.next);
      print(node.data);
    }

    _printReverse(head);
  }

  // Challenge 2: إيجاد العنصر في المنتصف
  Node<T>? findMiddle() {
    if (head == null) return null;

    Node<T>? slow = head;
    Node<T>? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow;
  }

  // Challenge 3: عكس القائمة
  void reverse() {
    Node<T>? prev = null;
    Node<T>? current = head;
    Node<T>? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }

  // Challenge 4: حذف كل القيم المطابقة لقيمة معينة
  void removeAllOccurrences(T value) {
    while (head != null && head!.data == value) {
      head = head!.next;
    }

    Node<T>? current = head;

    while (current != null && current.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
  }
}

// مثال تشغيل
void main() {
  LinkedList<int> list = LinkedList<int>();

  // إضافة عناصر
  list.append(10);
  list.append(20);
  list.append(30);
  list.append(20);
  list.append(40);

  print("القائمة الأصلية:");
  list.printList();

  print("\nChallenge 1: طباعة بالعكس:");
  list.printInReverse();

  print("\nChallenge 2: العنصر في المنتصف:");
  var middle = list.findMiddle();
  if (middle != null) {
    print(middle.data);
  }

  print("\nChallenge 3: عكس القائمة:");
  list.reverse();
  list.printList();

  print("\nChallenge 4: حذف جميع القيم = 20:");
  list.removeAllOccurrences(20);
  list.printList();
}
