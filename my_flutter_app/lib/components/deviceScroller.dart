import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/switch_option.dart';

class Devicescroller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Devicescroller();
  }
}

class _Devicescroller extends State<Devicescroller> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
        SwitchOption(),
      ],
    );
  }
}
