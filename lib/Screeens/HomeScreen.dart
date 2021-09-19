import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rashtro_flutter/Screeens/IssueProblem.dart';
import 'package:rashtro_flutter/Utils/ColorList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        textScaleFactor: 1),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        textScaleFactor: 1),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        textScaleFactor: 1),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "রাষ্ট্র",
          textScaleFactor: 1,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                title: Text('রাষ্ট্র', textScaleFactor: 1)),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_rounded),
                title: Text('বিবরনী', textScaleFactor: 1)),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_rounded),
              title: Text('ঘোষণা', textScaleFactor: 1),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          iconSize: 24,
          onTap: _onItemTapped,
          elevation: 8),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        shrinkWrap: true,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 160,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              autoPlay: true,
              // enlargeCenterPage: true,
              //scrollDirection: Axis.vertical,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _currentIndex = index;
                  },
                );
              },
            ),
            items: imagesList
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      margin: EdgeInsets.only(
                        top: 4.0,
                      ),
                      // elevation: 6.0,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.0),
                          ),
                          child: Stack(
                            children: [
                              Image.network(
                                item,
                                fit: BoxFit.cover,
                                height: 160,
                                width: double.infinity,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0, top: 4, bottom: 4),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Card(
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: SvgPicture.asset(
                                "assets/images/siren.svg",
                                height: 50,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "জরুরী নাম্বারসমূহ",
                                textScaleFactor: 1,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Card(
                        color: primaryColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: SvgPicture.asset(
                                "assets/images/sos.svg",
                                height: 50,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "জরুরী সাহায্য",
                                textScaleFactor: 1,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 2.0, top: 4, bottom: 4),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Card(
                        color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: SvgPicture.asset(
                                "assets/images/emergency_call.svg",
                                height: 50,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "৯৯৯",
                                textScaleFactor: 1,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 8),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/problem_solving.svg",
                        height: 30,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "সমাধান কাউন্টার",
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, bottom: 6),
                    height: 2,
                    width: double.infinity,
                    color: Colors.black26,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "সর্বমোট",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "৮",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "প্রক্রিয়াধীন",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "৮",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "অনিষ্পাদিত",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "৮",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.green[200],
                                      fontWeight: FontWeight.bold,fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "নিষ্পন্ন",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "৮",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold,fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8, bottom: 12, top: 8),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/ic_edit.svg",
                        height: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "সমস্যা জানান",
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 2,
                    width: double.infinity,
                    color: Colors.black26,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Builder(
                          builder: (BuildContext context) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => IssueAProblem(
                                              type: "নর্দমা",
                                              assetName: drainIcon,
                                            )));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    drainIcon,
                                    height: 50,
                                  ),
                                  Text(
                                    "নর্দমা",
                                    textScaleFactor: 1,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "জলাবদ্ধতা",
                                          assetName: floodIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                floodIcon,
                                height: 50,
                              ),
                              Text(
                                "জলাবদ্ধতা",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "পাবলিক টয়লেট",
                                          assetName: publicToiletIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                publicToiletIcon,
                                height: 50,
                              ),
                              Text(
                                "পাবলিক টয়লেট",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "অবৈধ স্থাপনা",
                                          assetName: encroachmentIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                encroachmentIcon,
                                height: 50,
                              ),
                              Text(
                                "অবৈধ স্থাপনা",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "আবর্জনা",
                                          assetName: garbageIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                garbageIcon,
                                height: 50,
                              ),
                              Text(
                                "আবর্জনা",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "রাস্তা",
                                          assetName: roadIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                roadIcon,
                                height: 50,
                              ),
                              Text(
                                "রাস্তা",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "সড়ক বাতি",
                                          assetName: streetLightIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                streetLightIcon,
                                height: 50,
                              ),
                              Text(
                                "সড়ক বাতি",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IssueAProblem(
                                          type: "মশা",
                                          assetName: mosquitoIcon,
                                        )));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                mosquitoIcon,
                                height: 50,
                              ),
                              Text(
                                "মশা",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 8),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/flag.svg",
                        height: 30,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "প্রয়োজনীয় সেবা",
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 2,
                    width: double.infinity,
                    color: Colors.black26,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 8,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/tax.svg",
                                height: 50,
                              ),
                              Text(
                                "হোল্ডিং ট্যাক্স",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/id_card.svg",
                                height: 50,
                              ),
                              Text(
                                "জাতীয় পরিচয়পত্র",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/certificate.svg",
                                height: 50,
                              ),
                              Text(
                                "জন্ম নিবন্ধন",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/driver_license.svg",
                                height: 50,
                              ),
                              Text(
                                "ই-ট্রেড লাইসেন্স",
                                textScaleFactor: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> imagesList = [
  'https://cdn.jagonews24.com/media/imgAllNew/BG/2018June/pm-gazipur-mayor-b-20180630180816.jpg',
  'https://thedailynewnation.com/library/1524755812_0.jpg',
  'https://thefinancialexpress.com.bd/uploads/1532593472.jpg',
];

final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];
