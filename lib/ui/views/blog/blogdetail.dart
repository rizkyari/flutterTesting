import 'package:flutter/material.dart';

class BlogDetail extends StatefulWidget {
  final String title;
  final String category;
  BlogDetail({Key key, @required this.title, @required this.category})
      : super(key: key);

  @override
  _BlogDetailState createState() => _BlogDetailState(title, category);
}

class _BlogDetailState extends State<BlogDetail> {
  final String title;
  final String category;
  _BlogDetailState(this.title, this.category);

  @override
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
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/icons/arrowLeft.png"),
        ),
        actions: [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 165,
//                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/blogThumb.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
              (title != null
                  ? Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: "Goth-Bold",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xff454d66)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                category,
                                style: TextStyle(
                                    fontFamily: "Gotham-Bold",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff00c1de)),
                              ),
                            ),
                          ),
                          Container(
                              child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: titleText("Lorem Dolor Elit")),
                              contentText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus. Elit ut aliquam, purus amet dolor sit."),
                              Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  child: contentText(
                                      "Vivamus cursus vulputate diam tincidunt quisque Lor elitt.")),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: titleText("Lorem Vivamus")),
                              contentText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus. Consectur adipiscing elit ut aliquam."),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: titleText("Aliquam Ipsum"))),
                              Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: contentText(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus. Aliquam adipiscing elit ut aliquam.")),
                              contentText(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis. consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus. Aliquam adipiscing elit ut aliquam."),
                            ],
                          ))
                        ],
                      ),
                    )
                  : Text("please go back to the last page")),
            ],
          ),
        ),
      ),
    );
  }
}

Widget titleText(String texts) {
  return Container(
    child: Text(
      texts,
      style: TextStyle(
          fontFamily: "Gotham-Bold",
          fontWeight: FontWeight.w700,
          fontSize: 13,
          color: Color(0xff454d66)),
    ),
  );
}

Widget contentText(String content) {
  return Container(
    child: Text(
      content,
      style: TextStyle(
          fontFamily: "Gotham-Book",
          fontWeight: FontWeight.w400,
          fontSize: 12.5,
          color: Color(0xff454d66)),
    ),
  );
}
