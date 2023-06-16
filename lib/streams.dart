import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  print("main fonksiyonuna girildi");
  var stream = StreamRunner();
  stream.listen((event) {
    print("${event.runtimeType} main");
  });

  print("main bitti");
}

Stream<int> StreamRunner() async* {
  for (int i = 0; i < 10; i++) {
    print("$i." + "bot geldi ");
    await Future.delayed(Duration(seconds: 2));
    print("Yieldan önce");
    yield i;
    print("yieldan sonra");
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
