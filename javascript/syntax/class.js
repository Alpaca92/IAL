// ES6
class Human {
  constructor() {
    this.gender = "male";
  }

  printGender() {
    console.log(this.gender);
  }
}

class Person extends Human {
  constructor() {
    super();
    this.name = "ayaan";
    this.gender = "unknown";
  }

  printMyName() {
    console.log(this.name);
  }
}

const person = new Person();

person.printMyName();
person.printGender();

// ES7

class NewHuman {
  gender = "male";

  printGender = () => {
    console.log(this.gender);
  };
}

class NewPerson extends NewHuman {
  name = "ayann";
  gender = "unknown";

  printMyName = () => {
    console.log(this.name);
  };
}

const newPerson = new NewPerson();

newPerson.printMyName();
newPerson.printGender();

/*
ES7에서는 constructor, super를 사용하지 않아도 되고
property를 지정할 때 this가 암묵적으로 적용되며 메서드는 arrow function을 사용하도록 됨

*/
