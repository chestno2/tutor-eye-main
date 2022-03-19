import 'package:flutter/material.dart';
import 'package:tutor_eye_app/FixFiles/palette.dart';


class Dropdown<T> extends StatelessWidget {
  const Dropdown({
    Key key,
    this.label,
    this.labelStyle,
    this.items,
    this.value,
    this.padding,
    this.margin,
    this.onChanged,
    this.style,
    this.hint,
  }) : super(key: key);

  final String label;
  final TextStyle labelStyle;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final ValueChanged<T> onChanged;
  final double itemHeight = 50;
  final TextStyle style;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final _margin =
        const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0).copyWith(
      left: margin?.horizontal,
      right: margin?.horizontal,
      bottom: margin?.vertical,
      top: margin?.vertical,
    );
    Widget child = Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0).copyWith(
        left: padding?.horizontal,
        right: padding?.horizontal,
        bottom: padding?.vertical,
        top: padding?.vertical,
      ),
      margin: label == null || label.isEmpty ? _margin : null,
      width: 1,
      height: 42.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.inputBorderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          style: const TextStyle(
            fontSize: 13.0,
            decoration: TextDecoration.none,
            color: Palette.blackColor,
            height: 1.35,
          ).merge(style),
          onChanged: onChanged,
          value: value,
          isExpanded: true,
          items: items,
          itemHeight: itemHeight,
          hint: hint != null && hint.isNotEmpty ? Text(hint) : null,
        ),
      ),
    );

    if (label != null && label.isNotEmpty) {
      child = Padding(
        padding: _margin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style:const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
                color: Palette.inputHintColor,
              ).merge(labelStyle),
            ),
            const SizedBox(
              height: 2.0,
            ),
            child
          ],
        ),
      );
    }

    return child;
  }
}
