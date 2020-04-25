import 'package:flutter/material.dart';
import 'package:mobilehomework/models/techno_model.dart';
import 'package:mobilehomework/video_list.dart';

class HomeScreen extends StatelessWidget {//homescreen classi olusturarak modeldeki verileri buraya atacagiz
  @override
  Widget build(BuildContext context) {
    return VideoList(listData: technoData,);//videolistteki verileri import ederek home ekrani ile iletisimi saglayacagiz
                                           //videolist icerisinde datayi cagirarak homescrrende goruntulenmesini sagladik
  }
}
