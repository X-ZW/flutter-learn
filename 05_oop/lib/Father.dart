class Father {
  String name = 'xzw';
  num _money = 10000;
  String job;

  say() {
    print('我是F ${this.name}');
  }

  Father(this.job);
  Father.orgin(this.job);
}
