List<int> reverseListOfNumbers(List<int> list) => list.reversed.toList();

// typedef
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers2(ListOfInts list) => list.reversed.toList();

void main() {
  print(reverseListOfNumbers([1, 2, 3, 4]));
  print(reverseListOfNumbers2([4, 1, 2, 3]));
}
