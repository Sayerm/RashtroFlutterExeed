import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rashtro_flutter/Utils/ColorList.dart';

class IssueAProblem extends StatefulWidget {
  final type, assetName;

  const IssueAProblem({Key? key, this.type, this.assetName}) : super(key: key);

  @override
  _IssueAProblemState createState() => _IssueAProblemState();
}

class _IssueAProblemState extends State<IssueAProblem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
        title: Text(
          widget.type,
          textScaleFactor: 1,
          style: TextStyle(
              color: primaryColor, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(12),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.vertical,
        children: [
          SvgPicture.asset(
            widget.assetName,
            height: 140,
          )
        ],
      ),
    );
  }
}
