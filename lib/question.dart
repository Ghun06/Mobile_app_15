import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var sentences = [
    'Câu 1: FLutter là gì ?',
    'Câu 2: Hàm build dùng để làm gì ?',
    'Câu 3: Sự khác nhau giữa Stateless và Stateful ?',
    'Câu 4: Ngôn ngữ dùng trong Flutter là gì ?',
    'Câu 5: FLutter do công ty nào phát triển ?',
  ];

  var sentenceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.greenAccent,

        appBar: AppBar(
          title: const Text('Scaffold title'),
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.yellow, // foreground
              ),
              onPressed: (){
                setState(() {
                  sentenceIndex = 0;
                  print(sentenceIndex);
                });
              },
              child: const Text('Quay về câu hỏi đầu'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.yellow, // foreground
              ),
              onPressed: (){
                setState(() {
                  if (sentenceIndex > 0)
                    sentenceIndex--;
                  print(sentenceIndex);
                });
              },
              child: const Text('Câu hỏi trước'),
            ),
            Text(
              sentences[sentenceIndex],
              style: TextStyle(
                  fontSize: 26
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.yellow, // foreground
              ),
              onPressed: (){
                setState(() {
                  if (sentenceIndex < 4)
                    sentenceIndex++;
                  print(sentenceIndex);
                });
              },
              child: const Text('Câu hỏi tiếp theo'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.yellow, // foreground
              ),
              onPressed: (){
                setState(() {
                  sentenceIndex = 4;
                  print(sentenceIndex);
                });
              },
              child: const Text('Câu hỏi cuối cùng'),
            ),
          ],
        ),
      ),
    );
  }
}