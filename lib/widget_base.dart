import 'package:flutter/material.dart';

class WidgetBase extends StatelessWidget {
  final Widget child;

  const WidgetBase(this.child) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: child,
      ),
    );
  }
}
