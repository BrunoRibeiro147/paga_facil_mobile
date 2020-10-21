import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Input extends StatefulWidget {
  final String label;
  final TextInputType type;
  final MaskTextInputFormatter formatter;
  final int limit;

  Input(
      {@required this.label, @required this.type, this.formatter, this.limit});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffE8E8E8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '${widget.label}',
                hintStyle: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              keyboardType: widget.type,
              inputFormatters:
                  widget.formatter != null ? [widget.formatter] : [],
              maxLength: widget.limit,
            ),
          ),
        ],
      ),
    );
  }
}
