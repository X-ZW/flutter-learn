import 'lib//function.dart' deferred as func;

void main(List<String> args) {
  greet();
  print('证明异步');
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}
