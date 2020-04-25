import 'package:flutter/material.dart';
import 'package:mobilehomework/techno_main.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget { //uygulamanin main sayfasi yapiacak her degisiklik bu satirlar arasina eklenecek
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,//sag ustteki debug yazisini kaldiran kod
      title: "Technology",//uygulama ana basligi
      home: TechnoMain(),//bu classi import ederek techno_main.dart klasoru ile haberlesmesini sagliyoruz.

    );
  }
}
