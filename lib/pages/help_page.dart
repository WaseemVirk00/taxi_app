import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:taxi_app/utils/routers.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool chnageButton = false;

  movetohome(BuildContext context) async {
    setState(() {
      chnageButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      chnageButton = false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Lottie.asset(
                  'assets/files/help_grow.json',
                  height: 200,
                  reverse: true,
                  width: 200,
                ),
              ),
              Card1(),
              Card3(),
            ],
          ),
        ),
      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
              ),
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
                      "ExpandablePanel",
                    )),
                collapsed: Text(
                  loremIpsum,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(5))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
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

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Expandable",
                  ),
                ],
              ),
            ),
          ]);
    }

    buildCollapsed2() {
      return buildImg(Colors.lightGreenAccent, 150);
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Expandable",
                  ),
                  Text(
                    "3 Expandable widgets",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
              Expanded(child: buildImg(Colors.orange, 100)),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: buildImg(Colors.lightBlue, 100)),
              Expanded(child: buildImg(Colors.cyan, 100)),
            ],
          ),
        ],
      );
    }

    buildExpanded3() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              loremIpsum,
              softWrap: true,
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expandable(
                collapsed: buildCollapsed1(),
                expanded: buildExpanded1(),
              ),
              Expandable(
                collapsed: buildCollapsed2(),
                expanded: buildExpanded2(),
              ),
              Expandable(
                collapsed: buildCollapsed3(),
                expanded: buildExpanded3(),
              ),
              Divider(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var controller =
                          ExpandableController.of(context, required: true)!;
                      return TextButton(
                        child: Text(
                          controller.expanded ? "COLLAPSE" : "EXPAND",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.deepPurple),
                        ),
                        onPressed: () {
                          controller.toggle();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildItem(String label) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(label),
      );
    }

    buildList() {
      return Column(
        children: <Widget>[
          for (var i in [1, 2, 3, 4]) buildItem("Item ${i}"),
        ],
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToExpand: true,
                  tapBodyToCollapse: true,
                  hasIcon: false,
                ),
                header: Container(
                  color: Colors.indigoAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ExpandableIcon(
                          theme: const ExpandableThemeData(
                            expandIcon: Icons.arrow_right,
                            collapseIcon: Icons.arrow_drop_down,
                            iconColor: Colors.white,
                            iconSize: 28.0,
                            iconPadding: EdgeInsets.only(right: 5),
                            hasIcon: false,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Items",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                collapsed: Container(),
                expanded: buildList(),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
