import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  bool _stateAppBar = true;
  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          if (_stateAppBar == true)
            _customContainerBold("Following")
          else
            _customContainerNormal("Following"),
          if (_stateAppBar == false)
            _customContainerBold("You")
          else
            _customContainerNormal("You"),
        ],
      );

  Widget _customContainerBold(String title) => Container(
        width: 180,
        height: 44,
        decoration: const BoxDecoration(
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
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF262626),
            ),
          ),
        ),
      );

  Widget _customContainerNormal(String title) => Container(
        width: 210,
        height: 44,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: const Color(0xFF000000).withOpacity(0.4),
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
              color: const Color(0xFF000000).withOpacity(0.4),
            ),
          ),
        ),
      );
}
