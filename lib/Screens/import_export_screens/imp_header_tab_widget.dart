import 'package:desktopapp/Screens/import_export_screens/widgets/imp_tab_button_widget.dart';
import 'package:flutter/material.dart';

class ImpTabWidgt extends StatelessWidget {
  const ImpTabWidgt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        tabButtonStyle(
            index: 0,
            title: "Import",
            imgUrl: "assets/svg_icons/profits.png",
            function: (() {})),
        tabButtonStyle(
            index: 1,
            title: "Export",
            imgUrl: "assets/svg_icons/profits.png",
            function: () {}),
      ],
    );
  }
}
