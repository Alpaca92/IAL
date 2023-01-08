void main() {\
  var oldFriends = [
    'nico',
    'lynn',
  ];

  // collection for
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) '$friend :)',
  ];

  print(newFriends);
}
