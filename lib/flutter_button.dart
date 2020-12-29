library flutter_button;

import 'package:flutter/material.dart';

class FlutterButton extends StatelessWidget {
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color splashColor;
  final Color highlightColor;
  final Color color;
  final double elevation;
  final double width;
  final double height;
  final ShapeBorder shape;
  final AlignmentGeometry alignment;
  final Widget child;

  FlutterButton({
    Key key,
    @required this.onPressed,
    this.margin,
    this.splashColor,
    this.highlightColor,
    this.shape,
    @required this.child,
    this.color,
    this.elevation,
    this.width,
    this.height,
    this.alignment,
    this.padding,
  })  : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(elevation == null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      child: Container(
        margin: margin,
        padding: padding,
        child: RaisedButton(
          color: color,
          splashColor: splashColor,
          highlightColor: highlightColor,
          elevation: elevation == null ? 0 : elevation,
          shape: shape,
          onPressed: onPressed,
          child: Container(
            height: height,
            width: width,
            alignment: alignment,
            child: child,
          ),
        ),
      ),
    );
  }
}