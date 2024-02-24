import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SizedBox(
          height: 36,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 25,
              ),
              labelStyle: TextStyle(color: Colors.grey.shade300),
              hintText: "Search",
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              hintStyle: TextStyle(
                  color: const Color(0xFF3C3C43).withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              alignLabelWithHint: true,
              fillColor: const Color(0xFF767680).withOpacity(0.12),
              filled: true,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      );
}
