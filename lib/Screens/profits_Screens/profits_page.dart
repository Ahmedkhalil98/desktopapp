import 'package:desktopapp/Screens/profits_Screens/show_profits_data.dart';
import 'package:desktopapp/Screens/profits_Screens/widgets/search_form.dart';
import 'package:flutter/material.dart';

class ProfitsPage extends StatefulWidget {
  const ProfitsPage({super.key});

  @override
  State<ProfitsPage> createState() => _ProfitsPageState();
}

class _ProfitsPageState extends State<ProfitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          //! => main section for show data table
          Expanded(
            flex: 4,
            child: ShowProfitsData(),
          ),
          //! => right section for search
          Expanded(
            flex: 2,
            child: SearchForm(),
          ),
        ],
      ),
    );
  }
}
