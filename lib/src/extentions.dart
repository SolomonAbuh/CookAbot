import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

extension SizedBoxExt on double {
  SizedBox sH() => SizedBox(height: this);
  SizedBox sW() => SizedBox(width: this);
}

extension PagePadding on Widget {
  Padding pagePadding() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: this,
      );
}
