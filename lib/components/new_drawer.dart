import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

class NewDrawer extends StatelessWidget {
  NewDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true,
        // default false
        swipe: true,
        // default true
        colorTransitionChild: Colors.red,
        // default Color.black54
        colorTransitionScaffold: Colors.black54,
        // default Color.black54

        //When setting the vertical offset, be sure to use only top or bottom
        offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),
        scale: IDOffset.horizontal(0.8),
        // set the offset in both directions

        proportionalChildArea: true,
        // default true
        borderRadius: 50,
        // default 0
        leftAnimationType: InnerDrawerAnimation.static,
        // default static
        rightAnimationType: InnerDrawerAnimation.quadratic,
        backgroundDecoration: BoxDecoration(color: Colors.red),
        // default  Theme.of(context).backgroundColor

        innerDrawerCallback: (a) => print(a),
        // return  true (open) or false (close)
        leftChild: Text("ABC"),
        // required if rightChild is not set
        rightChild: Container(),
        // required if leftChild is not set

        //  A Scaffold is generally used but you are free to use other widgets
        // Note: use "automaticallyImplyLeading: false" if you do not personalize "leading" of Bar
        scaffold: Scaffold(
          appBar: AppBar(automaticallyImplyLeading: true),
        )
        /* OR
            CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                    automaticallyImplyLeading: false
                ),
            ),
            */
        );
  }

  //  Current State of InnerDrawerState
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
}
