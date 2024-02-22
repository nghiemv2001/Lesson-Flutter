import 'package:flutter/material.dart';

class App_Bar_Custom extends StatefulWidget {
  const App_Bar_Custom({Key? key}) : super(key: key);

  @override
  State<App_Bar_Custom> createState() => _App_Bar_CustomState();
}

class _App_Bar_CustomState extends State<App_Bar_Custom> {
  bool _stateAppBar = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (_stateAppBar == true)
            ? Custom_Container_Bold("Following")
            : Custom_Container_Normal("Following"),
        (_stateAppBar == false)
            ? Custom_Container_Bold("You")
            : Custom_Container_Normal("You"),
      ],
    );
  }

  Widget Custom_Container_Bold(String title) {
    return Container(
      width: 180,
      height: 44,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color(0xFF262626),
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF262626),
          ),
        ),
      ),
    );
  }

  Widget Custom_Container_Normal(String title) {
    return Container(
      width: 210,
      height: 44,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFF000000).withOpacity(0.4),
          ),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            _stateAppBar = !_stateAppBar;
          });
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF000000).withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
