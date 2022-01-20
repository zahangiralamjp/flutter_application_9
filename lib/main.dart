import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return MyData();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
          ),
          body: Consumer<MyData>(builder: (context, data, _) {
            return Text(data.read());
          }),
        ),
      ),
    );
  }
}

class MyData extends ChangeNotifier {
  read() {
    return 'Hello World!';
  }
}
