import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonWidget extends StatefulWidget {
  final Function onPressed;
  final String title;
  final Color? backgroundColor;
  final double borderRadiusValue;

  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.borderRadiusValue = 8.0,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () => widget.onPressed(),
        style: ElevatedButton.styleFrom(
          primary: widget.backgroundColor, 
          onPrimary: widget.backgroundColor != null? widget.backgroundColor!.withOpacity(0.1): null,
          elevation: 2,
          animationDuration: const Duration(seconds: 2),
          ).copyWith(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadiusValue),
            ),
          ),),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 24, color: Colors.black),
              ),
              const Icon(
                Icons.chevron_right,
                size: 50,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
