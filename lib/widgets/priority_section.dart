import 'package:flutter/material.dart';

class PrioritySection extends StatefulWidget {
  const PrioritySection({super.key, required this.isActive});
  final List<bool> isActive;
  @override
  State<PrioritySection> createState() => _PrioritySectionState();
}

class _PrioritySectionState extends State<PrioritySection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.isActive[0] = true;
              widget.isActive[1] = false;
              widget.isActive[2] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: widget.isActive[0] ? Color(0xffCFF7D3) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'Low',
                style: TextStyle(
                  color: widget.isActive[0] ? Color(0xff34C759) : Colors.black,
                  fontSize: 16,
                  fontWeight: widget.isActive[0]
                      ? FontWeight.w700
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.isActive[1] = true;
              widget.isActive[0] = false;
              widget.isActive[2] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: widget.isActive[1] ? Color(0xffFFEACC) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'Medium',
                style: TextStyle(
                  color: widget.isActive[1] ? Colors.orange : Colors.black,
                  fontSize: 16,
                  fontWeight: widget.isActive[1]
                      ? FontWeight.w700
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.isActive[2] = true;
              widget.isActive[1] = false;
              widget.isActive[0] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: widget.isActive[2] ? Color(0xffFFD8D6) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'High',
                style: TextStyle(
                  color: widget.isActive[2] ? Colors.red : Colors.black,
                  fontSize: 16,
                  fontWeight: widget.isActive[2]
                      ? FontWeight.w700
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
