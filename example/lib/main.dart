import 'package:first_package/first_package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    var dec = CodeUtil.decompr(
        '''H4sIAAAAAAAACpVSTWvCQBB954L/QXKuxXyYVm+pH+ChPUkvImIbFTGp0kQ8iP+9b8bEbiBLKMM+Zifvbd7M7gUtPKDNcDDDCp9IsGY+YGV+/yZxqexuiozsb5yQFgoXj7WsnCdvsENc8Bz00SW7q+jUqk7UrfFTUUUY4Q1TvFs0CZb0s6Kfsof/aZbsv9TVs49kZjjTl9lLgA58TIhjDIkuQgNdYsRO5etYc6kH9NUh2ye+KIbFORHxlTWphFYfMpuYmOGrwbPMMWPscGCn5jxDupLVw7NFm+t/UqpkRklFbb83ue9cs79bGPJ9TfHBCTTpYsVS6dGfx5BJCnr0OtPqgNgnBqw8cW6+tYuj3ljKtW9wX76EmG62BtdkXu+7hWZX/AIEcLJ3RgMAAA==''');
    print(dec);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
