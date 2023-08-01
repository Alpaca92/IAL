void main() {
  var oldFruits = [
    'apple',
    'strawberry',
  ];

  var newFruits = [
    'grape',
    'blueberry',
    // collection for
    for (var fruit in oldFruits) '👎 $fruit',
  ];
}
