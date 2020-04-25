class TechnoModel {// olusturulan class ile verileri dinamik olarak cekmeyi saglayacagiz
  final String title;
  final String description;
  final String thumbNail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;

  TechnoModel(
      {this.title,
        this.description,
        this.thumbNail,
        this.publishedTime,
        this.channelTitle,
        this.channelAvatar,
        this.viewCount,
        this.likeCount,
        this.dislikeCount});
}

List<TechnoModel> technoData = [// model oluşturarak liste halinde verileri anasayfaya çekeceğiz
  TechnoModel(                 // list model ile veri kalabaligindan kurtulup daha performansli kod elde etmis olacagiz
    title: "Nasa Canlı Yayın",
    description:
    "20/04/2020",
    thumbNail:
    "https://i.ytimg.com/vi/WZB7yswo6a0/maxresdefault.jpg",
    publishedTime: "Şuan",
    channelTitle: "Nasa",
    channelAvatar:
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/1200px-NASA_logo.svg.png",
    viewCount: "50M görüntülenme",
    likeCount: "34K",
    dislikeCount: "2K",
  ),
  TechnoModel(
    title: "SpaceX",
    description: "SpaceX Roket Denemesi ",
    thumbNail:
    "https://i.ytimg.com/vi/I4sMhHbHYXM/maxresdefault.jpg",
    publishedTime: "16 saat önce",
    channelTitle: "SpaceX",
    channelAvatar:
    "https://i.pinimg.com/originals/87/50/60/875060ef2055a2462d1e29664b70957c.jpg",
    viewCount: "917K görüntülenme",
    likeCount: "20k",
    dislikeCount: "51",
  ),
  TechnoModel(
    title: "Evren nasıl oluştu ? ",
    description: "Evrenin oluşumunu yakından inceleyin",
    thumbNail:
    "https://i.ytimg.com/vi/7nYO74CpUzU/maxresdefault.jpg",
    publishedTime: "6 gün ago",
    channelTitle: "Dünyamız",
    channelAvatar:
    "https://setav.org/assets/uploads/2018/01/dunya.jpg",
    viewCount: "53M görüntülenme",
    likeCount: "20k",
    dislikeCount: "51",
  ),
];