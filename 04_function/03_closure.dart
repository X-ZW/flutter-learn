void main(List<String> args) {
  // 闭包

  var m = () {
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  };

  var a = m();
  a();
  a();
  a();
  a();
}
