class Person {
  String name = 'x';

  getName() {
    print('pn $name $this.name');
  }
}

void main(List<String> args) {
  Person p = new Person();
  p.getName();

  // Dart 中所有内容都是对象
}
