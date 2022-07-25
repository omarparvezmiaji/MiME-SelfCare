import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class FaqScreen extends StatelessWidget {
  //const FaqScreen({Key? key}) : super(key: key);
  String FAQ1 = 'Q1. Is there any installation fee with a new connection?';
  String FAQ2 = 'Q2. How long is the installation time for a new connection?';
  String FAQ3 = 'Q3. What are your corporate packages?';
  String FAQ4 =
      'Q4. How can I communicate with MiME to raise any complain or feedback?';
  String FAQ5 = 'Q5. How much to get a real IP?';
  //Answer of FAQ
  String Ans1 =
      'Answer: Yes, There is a one-time installation charge of BDT 1,500 for new connections.';
  String Ans2 =
      'Answer: Generally installation time is Maximum 3 working days.';
  String Ans3 =
      'Answer: We provide custom-built packages for our enterprise customers. Simply follow the contact us link and drop in your details, call this number: 16676 or email us: info.mime@cg-bd.com.';
  String Ans4 =
      'Answer: You can get in touch with MiME in three ways a) through our Hotline Number: 16676 b) By Email: info.mime@cg-bd.com and c) Using Selfcare; your personalized MiME portal.';
  String Ans5 = 'Answer: You have to pay BDT 200 per Month.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "FAQ",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(FAQ1, Ans1),
            Card1(FAQ2, Ans2),
            Card1(FAQ3, Ans3),
            Card1(FAQ4, Ans4),
            Card1(FAQ5, Ans5),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  late String FAQ;
  late String Descrip;
  Card1(this.FAQ, this.Descrip);
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
              // child: Container(
              //   decoration: BoxDecoration(
              //     color: Colors.orange,
              //     shape: BoxShape.rectangle,
              //   ),
              // ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "",
                      // style: Theme.of(context).textTheme,
                    )),
                collapsed: Text(
                  FAQ,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //  for (var _ in Iterable.generate(5))
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          Descrip,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
