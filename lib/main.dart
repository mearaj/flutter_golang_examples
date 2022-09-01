import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_examples/ffi/ffi.dart';
import 'package:flutter_golang_examples/grpc/blog.pb.dart' as blog;
import 'package:flutter_golang_examples/grpc/blog.pbgrpc.dart';
import 'package:flutter_golang_examples/grpc/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc.dart';

var serverPort = 0;

void main() {
  startServer();
  runApp(const MyApp());
}
var blogs = [];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    serverPort = getPort();
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  BlogServiceClient client = BlogServiceClient(
      ClientChannel('localhost', port:getPort(),
          options:ChannelOptions(credentials: ChannelCredentials.insecure())));
  void _incrementCounter() async {
    var response = await client.createBlog(Blog(
      id: _counter.toString(),
      title: "Mearaj Title",
      authorId: "Mearaj ID"
    ));
    var list =  client.listBlogs(Empty());
    list.forEach((element) {
      print(element);
    });
    setState(() {
      _counter++;
      print(response);
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
              'Pushed Counts:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
