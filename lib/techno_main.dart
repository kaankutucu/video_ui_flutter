import 'package:flutter/material.dart';
import 'package:mobilehomework/screens/home.dart';

class TechnoMain extends StatefulWidget { //technoMain sinifini olusturup main.dart klasoru icinde tanimlayacagiz
  @override                               //Boylece main klasoru icerisindeki kod fazlaligindan kurtulmus olacagiz
  _TechnoMainState createState() => _TechnoMainState();
}

class _TechnoMainState extends State<TechnoMain> {
  int _currentIndex = 0; //bottomnavigation gecislerini vermek icin verilen kod

  _onTapped(int index){//tiklandiginda bottombar arasi gecisi saglayan kod blogu
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    List <Widget> _screens = [
     HomeScreen(), //Anasayfa body de yapacagimiz butun degisiklikler burada gozukecek
      //home.dart klasorunu buraya cagirdik ve o klasorde yapilacak butun degisiklerin burada goruntulenmesini sagladik
    ];

     return Scaffold(//Scaffold olusturarak uygulama acilis ekranina sekil vermeye basliyoruz
        appBar: AppBar(//appbar komutu ile uygulama ustune bir bar olusturuyoruz.buraya logo ve iconlarimizi koyacagiz
          backgroundColor: Colors.pinkAccent[200],//appbar background color verildi
          iconTheme: IconThemeData(color: Colors.white),
          title: Image.asset('images/logo.png', height: 60,),//assetten cekilen image appbarda logo olarak kullandik
          actions: <Widget>[//action vererek appbara icon eklemesini saglayacagiz
            IconButton(
              icon: Icon(Icons.videocam), onPressed: () {} ,//Appbardaki video iconunu eklemek icin kullanilan kod // onpressed vererek tiklanabilirligini aciyoruz
            ),
            IconButton(
              icon: Icon(Icons.search), onPressed: () {} ,//Appbardaki video iconunu eklemek icin kullanilan kod // onpressed vererek tiklanabilirligini aciyoruz
            ),
            IconButton(
              icon: Icon(Icons.account_circle), onPressed: () {} ,//Appbardaki video iconunu eklemek icin kullanilan kod // onpressed vererek tiklanabilirligini aciyoruz
            ),
          ],
        ),
       body: _screens[_currentIndex] ,
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,//bottombar icon arasi gecisler icin kullanilan kod
         type: BottomNavigationBarType.fixed,//butun itemleri sabitlemek icin kullanilan kod
             fixedColor: Colors.pinkAccent[200],// sabitlenen icon tiklandiginda olusan renk kodu
         onTap: _onTapped ,//bottombar icon arasi gecisler icin kullanilan kod
         items: [
           BottomNavigationBarItem(// tabbarda icon olusturmak icin kullanilan kod blogu
             title: Text("Anasayfa"), icon: Icon(Icons.home)),
           BottomNavigationBarItem(
               title: Text("Populer"), icon: Icon(Icons.whatshot)),
           BottomNavigationBarItem(
               title: Text("Abonelik"), icon: Icon(Icons.subscriptions)),
           BottomNavigationBarItem(
               title: Text("Mesaj"), icon: Icon(Icons.mail)),
           BottomNavigationBarItem(
               title: Text("Kutuphane"), icon: Icon(Icons.folder)),
         ],),
     );
  }
}
