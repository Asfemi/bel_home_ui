import 'package:flutter/widgets.dart';

extension WidgetPaddingExtension on Widget {
  Widget withPadding(EdgeInsetsGeometry padding) =>
      Padding(padding: padding, child: this);
  Widget withSymmetricPadding({double vertical = 0, double horizontal = 0}) =>
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );
  Widget withAllPadding(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  Widget withOnlyPadding({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) => Padding(
    padding: EdgeInsets.only(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    ),
    child: this,
  );
}

extension WidgetMarginExtension on Widget {
  Widget withMargin(EdgeInsetsGeometry margin) =>
      Container(margin: margin, child: this);
  Widget withSymmetricMargin({double vertical = 0, double horizontal = 0}) =>
      Container(
        margin: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );
  Widget withAllMargin(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);
}
