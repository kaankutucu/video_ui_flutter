import 'package:flutter/material.dart';
import 'package:mobilehomework/models/techno_model.dart';


class VideoList extends StatelessWidget {//olusturulan widget ile techno_model.dart verilerin cekilmesini sagladik

  final listData;//consruction olusturarak verilere key value degerleri vermis olduk

  const VideoList({this.listData});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index){
          return Column(
            children: <Widget>[
              Container(// kolon olusturarak modelde istenen verinin dinamik olarak gelmesini sagladik
                width: MediaQuery.of(context).size.width,//cihaza gore genislik vererek responsive olmasini sagladik
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(listData[index].thumbNail) ,// image internet uzerinden cekebilmek icin kodu kullandik
                  fit: BoxFit.cover //bu kod ile gelen imagelerin cihaz genisliginde olmasini sagladik
                  ),
                ),
              ),
              ListTile (
                leading: CircleAvatar(backgroundImage: NetworkImage(listData[index].channelAvatar), // modeldeki channel avatar indexini cagirarak circle avatar icerisine bastirmis olduk
                ),
                title: Text(listData[index].title),
                subtitle: Text("${listData [index].channelTitle} - ${listData[index].viewCount} - ${listData[index].publishedTime}" // modelden cagirilan indexler ile title goruntulenme ve yayinlanma zamanini cagirmis olduk


                ),
              ),
            ],
          );
        },
        separatorBuilder: (context , index ) => Divider(//verilen divider ile aralarina cizgi koymus olduk
          height: 1,
          color: Colors.pinkAccent[200],
        ),
        itemCount: listData.length);
  }
}
