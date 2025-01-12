import 'package:flash_chat_starting_project/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPress;

  const RoundedButton(
      {Key? key,
        required this.title,
        required this.color,
        required this.onPress
      }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: const TextStyle(color: kWhiteColor),
          ),
        ),
      ),
    );
  }
}

