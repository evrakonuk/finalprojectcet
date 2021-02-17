import 'package:flutter/material.dart';
import 'package:story_diary/rounded_button.dart';

import 'book_rating.dart';
import 'constants.dart';

class DetailsScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var press;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: size.height * .12, left: size.width * .1, right: size.width * .02),
                    height: size.height * .48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/home.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: BookInfo(size: size,)
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        name: "Dünyayı Satan Adam",
                        chapterNumber: 1,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "olmak ve de olmamak ",
                        chapterNumber: 2,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "ne güzel komşumuzdun",
                        chapterNumber: 3,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "ofisteki sosyopat",
                        chapterNumber: 4,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "serin devlet",
                        chapterNumber: 5,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "budist",
                        chapterNumber: 6,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "öcülerin öcü",
                        chapterNumber: 7,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "sineklerin tanrısı",
                        chapterNumber: 8,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "dünyanın merkezi",
                        chapterNumber: 9,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "gerçekler ve hakikatler",
                        chapterNumber: 10,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "böyle uyurdu zerdüüt",
                        chapterNumber: 11,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "kartallar kuantal uçar",
                        chapterNumber: 12,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "mevlitte son tango",
                        chapterNumber: 13,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "mesut ve mutabık",
                        chapterNumber: 14,
                        press: () {},
                      ),


                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline5,
                      children: [
                        TextSpan(
                          text: "Bunları da ",
                        ),
                        TextSpan(
                          text: "sevebilirsiniz….",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                          EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                      "Kan ve Gül",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Alper Canıgüz",
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  BookRating(
                                    score: 4.5,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: RoundedButton(
                                      text: "Oku",
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "images/kan.png",
                          width: 120,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Bölüm $chapterNumber : $name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {

  const BookInfo({
    Key key,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "OĞULLAR ve \n RENCİDE RUHLAR ",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                          fontSize: 28
                      ),
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: this.size.width * .3,
                            padding: EdgeInsets.only(top: this.size.height *
                                .02),
                            child: Text(
                              "Beş yaş insanın en olgun çağıdır;sonra çürüme başlar.",
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 8,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: this.size.height * .015),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text("Oku",
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.favorite_border, size: 20,
                              color: Colors.grey,),
                            onPressed: () {},
                          ),
                          BookRating(score: 5),
                        ],
                      )
                    ],
                  )
                ],
              )
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  "images/oğullar.png",
                  height: 230,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              )),
        ],
      ),
    );
  }
}