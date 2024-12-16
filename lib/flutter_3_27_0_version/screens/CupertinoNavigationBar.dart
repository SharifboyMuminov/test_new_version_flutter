import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_new_version_flutter/utils/app_colors.dart';
import 'package:test_new_version_flutter/utils/app_text_style.dart';

class Flutter_3_27_0VersionCupertinoNavigationBar extends StatefulWidget {
  const Flutter_3_27_0VersionCupertinoNavigationBar({super.key});

  @override
  State<Flutter_3_27_0VersionCupertinoNavigationBar> createState() =>
      _Flutter_3_27_0VersionCupertinoNavigationBarState();
}

class _Flutter_3_27_0VersionCupertinoNavigationBarState
    extends State<Flutter_3_27_0VersionCupertinoNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers:[
            CupertinoSliverNavigationBar(
              largeTitle: Text('My Page'),
              backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
              trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  print("Action");
                },
                child: Icon(CupertinoIcons.add),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  title: Text('Item $index'),
                ),
                childCount: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
