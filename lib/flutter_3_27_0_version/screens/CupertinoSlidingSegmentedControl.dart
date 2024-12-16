import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_new_version_flutter/utils/app_size.dart';
import 'package:test_new_version_flutter/utils/app_text_style.dart';

class Flutter_3_27_0VersionCupertinoSlidingSegmentedControl extends StatefulWidget {
  const Flutter_3_27_0VersionCupertinoSlidingSegmentedControl({super.key});

  @override
  State<Flutter_3_27_0VersionCupertinoSlidingSegmentedControl> createState() =>
      _Flutter_3_27_0VersionCupertinoSlidingSegmentedControlState();
}

class _Flutter_3_27_0VersionCupertinoSlidingSegmentedControlState
    extends State<Flutter_3_27_0VersionCupertinoSlidingSegmentedControl> {
  int? _active = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    TextStyle textStyle =
        AppTextStyle.seoulNamsanMedium.copyWith(fontSize: 16.sp);

    return Scaffold(
      body: Center(
        child: CupertinoSlidingSegmentedControl(
          groupValue: _active,
          onValueChanged: (int? v) {
            setState(() {
              _active = v;
            });
          },
          children: {
            0: Text("Hello", style: textStyle),
            1: Text("Qonday", style: textStyle),
            2: Text("Makkami", style: textStyle),
          },
        ),
      ),
    );
  }
}
