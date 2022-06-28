import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidget extends StatefulWidget {
  final Function onPressed;
  final String title;
  Color backgroundColor;
  double borderRadiusValue;

  ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor = Colors.grey,
    this.borderRadiusValue = 8.0,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: widget.onPressed(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadiusValue),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(widget.backgroundColor),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 24),
              ),
              Icon(
                Icons.chevron_right,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
