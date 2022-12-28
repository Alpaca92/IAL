void main() {
  var numbers = [
    1,
    2,
    3,
    4,
    5,
  ];
  List<int> anotherNumbers = [
    1,
    2,
    3,
    4,
  ];
  numbers.add("1"); // error is occurred
  numbers.add(1);

  // collection if
  var giveMeFive = true;
  var collectionIf = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // if giveMeFive is true, which return 5
  ];
}
