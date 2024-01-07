void main() {
  var numbers = [
    1,
    2,
    3,
    5,
  ];
  List<int> nubmers2 = [
    1,
    2,
    3,
    4,
  ];

  var list = [
    1,
    2,
    3,
    true,
    'text',
    1,
  ];

  // dynamic은 dart compiler에게 type checking을 하지 말라고 지시하기 때문에 타입 안정성이 떨어진다
  // 따라서 아래와 같은 상황이 온다면 Object를 사용이 권장된다
  // Object는 dart의 core 타입으로 모든 타입들의 조상(root)이다
  List<Object> list2 = [
    1,
    2,
    true,
    'text',
    1,
  ];
  List<dynamic> list3 = [
    1,
    2,
    true,
    'text',
    1,
  ];

  // collection if
  var collectionIfList = [
    1,
    2,
    3,
    if (true) 4,
    5,
  ];

  // collection for
  var collectionForList = [
    for (var list in collectionIfList) list - 1,
  ];
}
