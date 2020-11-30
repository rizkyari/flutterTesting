import 'package:flutter/material.dart';

class BlogView extends StatefulWidget {
  @override
  _BlogViewState createState() => _BlogViewState();
}

class _BlogViewState extends State<BlogView> {
  String dropdownValue = 'all';
  List<ListNews> _listNews = [];

  @override
  void initState() {
    super.initState();

    _listNews.add(ListNews(
      thumbnailNews: "assets/images/blogThumb.png",
      newsTitle: "Islam di Indonesia dan Islam di Luar Negeri",
      category: "Berita",
      uploadDate: "19 Jan 20",
    ));
    _listNews.add(ListNews(
      thumbnailNews: "assets/images/blogThumb.png",
      newsTitle: "Kabah Ditutup Karena Wabah Covid-19",
      category: "Berita",
      uploadDate: "18 Jan 20",
    ));
    _listNews.add(ListNews(
      thumbnailNews: "assets/images/blogThumb.png",
      newsTitle: "Diskon Up to 10% Diskusi dengan Ustad",
      category: "Berita",
      uploadDate: "17 Jan 20",
    ));
    _listNews.add(ListNews(
      thumbnailNews: "assets/images/blogThumb.png",
      newsTitle: "10 Langkah Dalam Memperbaiki Ibadah",
      category: "Berita",
      uploadDate: "17 Jan 20",
    ));
    _listNews.add(ListNews(
      thumbnailNews: "assets/images/blogThumb.png",
      newsTitle: "8 Sifat Baik Setiap Nabi",
      category: "Berita",
      uploadDate: "16 Jan 20",
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Blog',
            style: TextStyle(
              fontFamily: "Gotham-Bold",
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xff9164cc),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Blog',
                      style: TextStyle(
                          fontFamily: 'Medel',
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF9164CC)),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'Category',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Gotham-Bold",
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF9164CC)),
                    ),
                    DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                            value: 'All', child: Text('All')),
                        DropdownMenuItem<String>(
                            value: 'Berita', child: Text('Berita')),
                      ],
                      onChanged: (_value) {
                        setState(() {
                          dropdownValue = _value;
                        });
                      },
                      hint: Text(dropdownValue),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xFFDADADA),
            thickness: 1.0,
          ),
          Expanded(
            child: ListView.builder(itemCount: _listNews.length,
            shrinkWrap: true,
            itemBuilder: (context, index){
              ListNews e = _listNews[index];
              return listBlog(e.thumbnailNews, e.newsTitle, e.category, e.uploadDate);
            },),
          )
          /*Container(
            child: SingleChildScrollView(
              child: Column(
                children: _listNews
                    .map((e) => listBlog(
                        e.thumbnailNews, e.newsTitle, e.category, e.uploadDate))
                    .toList(),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}

Widget listBlog(String thumbnailNews, String newsTitle, String category,
    String uploadDate) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                thumbnailNews,
                width: 100,
                height: 55,
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsTitle,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    softWrap: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                            fontFamily: "Gotham-Bold",
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF00C1DE)),
                      ),
                      Text(uploadDate),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Divider(),
    ],
  );
}

class ListNews {
  final String thumbnailNews;
  final String newsTitle;
  final String category;
  final String uploadDate;

  ListNews(
      {this.thumbnailNews, this.newsTitle, this.category, this.uploadDate});
}
