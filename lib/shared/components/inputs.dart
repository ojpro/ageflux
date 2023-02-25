import 'package:ageflux/shared/components/borders.dart';
import 'package:flutter/material.dart';

Widget DefaultInput({
  required title,
  TextInputType type = TextInputType.text,
  double width = double.infinity,
  Color backgroundColor = Colors.transparent,
  double radius = 4,
}) =>
    SizedBox(
      width: width,
      height: 46,
      child: TextFormField(
        expands: false,
        keyboardType: type,
        decoration: InputDecoration(
          hintText: title,
          filled: true,
          fillColor: backgroundColor,
          focusedBorder: RoundedInput(radius: radius + 2),
          enabledBorder: RoundedInput(
            color: Colors.white24,
            radius: radius,
          ),
        ),
      ),
    );

Widget DefaultDropdown({
  required String initial,
  required List items,
  required Function onChange,
  double radius = 4,
  double width = double.infinity,
  double height = 46,
}) =>
    Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(radius)),
      child: DropdownButton(
        focusColor: Colors.blueAccent,
        underline: Container(height: 0),
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        isExpanded: true,
        borderRadius: BorderRadius.circular(8),
        elevation: 0,
        menuMaxHeight: 240,
        value: initial,
        items: items
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (value) => onChange(value),
      ),
    );
