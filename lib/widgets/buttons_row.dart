import 'package:flutter/material.dart';

class ButtonsRow extends StatefulWidget {
  final int currentIndex;
  final Function() onTap;
  final Function() onPressed;
  const ButtonsRow({super.key, required this.currentIndex, required this.onTap, required this.onPressed});

  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.currentIndex == 0
            ? Container()
            : Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40,
          ),
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.lightBlue,
                    width: 4,
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 6,
                ),
                child: Icon(
                  Icons.chevron_left_outlined,
                  color: Colors.lightBlue,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40,
          ),
          child: GestureDetector(
            onTap: widget.onPressed,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.lightBlue,
                    width: 4,
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 6,
                ),
                child: Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.lightBlue,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
