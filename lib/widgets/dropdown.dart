import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flashcard/utils/functions.dart';
import 'package:flashcard/models/category.dart';
import 'package:flutter/cupertino.dart' show CupertinoPicker;

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});
  @override
  State<Dropdown> createState() {
    return _DropdownState();
  }
}

class _DropdownState extends State<Dropdown> {
  var selectedOption = selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? DropdownButton(
            value: selectedOption,
            items: CATEGORIES.values
                .map(
                  (category) => DropdownMenuItem(
                    value: category,
                    child: Text(
                      category.name.toUpperCase(),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(
                () {
                  if (value == null) {
                    return;
                  } else {
                    selectedOption = value;
                    selectedCategory = selectedOption;
                  }
                },
              );
            },
          )
        : TextButton(
            onPressed: showCupertino,
            child: Text(
              selectedOption.name,
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).brightness == Brightness.light
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          );
  }

  void showCupertino() {
    if (Platform.isIOS) {
      showModalBottomSheet(
        context: context,
        builder: (context) => buildCupertinoDropdown(),
      );
    }
  }

  Widget buildCupertinoDropdown() {
    return Container(
      width: double.infinity,
      height: 250,
      padding: const EdgeInsets.only(bottom: 10),
      child: CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (int index) {
          setState(() {
            selectedOption = CATEGORIES.values[index];
            selectedCategory = selectedOption;
          });
        },
        children: CATEGORIES.values
            .map(
              (option) => Text(option.name),
            )
            .toList(),
      ),
    );
  }
}
