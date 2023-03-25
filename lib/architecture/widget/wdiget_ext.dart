import 'package:flutter/widgets.dart';

extension WidgetExt on Widget {
  Widget align(AlignmentGeometry align) {
    return Container(
      alignment: align,
      child: this,
    );
  }

  Widget bgColor(Color color) {
    return Container(
      color: color,
      child: this,
    );
  }

  Widget decoration(Decoration de) {
    return Container(
      decoration: de,
      child: this,
    );
  }

  Widget padding(EdgeInsets inset) {
    return Container(
      padding: inset,
      child: this,
    );
  }

  Widget margin(EdgeInsets inset) {
    return Container(
      margin: inset,
      child: this,
    );
  }
}
