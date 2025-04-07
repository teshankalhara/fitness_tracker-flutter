import 'package:fitness_tracker/constant/color.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(color: greyColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBackgroundColor,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              labelStyle: const TextStyle(color: greyColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
              hintText: "Search",
              hintStyle: const TextStyle(color: greyColor),
              prefixIcon: const Icon(Icons.search, color: greyColor),
            ),
          ),
        ),
      ],
    );
  }
}
