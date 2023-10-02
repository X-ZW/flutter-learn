class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

main(List<String> args) {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);
}
