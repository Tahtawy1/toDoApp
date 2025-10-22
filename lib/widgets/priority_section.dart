import 'package:flutter/material.dart';

class PrioritySection extends StatefulWidget {
  const PrioritySection({super.key});

  @override
  State<PrioritySection> createState() => _PrioritySectionState();
}

class _PrioritySectionState extends State<PrioritySection> {
  List<bool> isActive = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isActive[0] = true;
              isActive[1] = false;
              isActive[2] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: isActive[0] ? Color(0xffCFF7D3) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'Low',
                style: TextStyle(
                  color: isActive[0] ? Color(0xff34C759) : Colors.black,
                  fontSize: 16,
                  fontWeight: isActive[0] ? FontWeight.w700 : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isActive[1] = true;
              isActive[0] = false;
              isActive[2] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: isActive[1] ? Color(0xffFFEACC) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'Medium',
                style: TextStyle(
                  color: isActive[1] ? Colors.orange : Colors.black,
                  fontSize: 16,
                  fontWeight: isActive[1] ? FontWeight.w700 : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isActive[2] = true;
              isActive[1] = false;
              isActive[0] = false;
              setState(() {});
            },
            child: Container(
              alignment: Alignment.center,
              height: 38,
              decoration: BoxDecoration(
                color: isActive[2] ? Color(0xffFFD8D6) : Colors.white,
                border: Border.all(color: Color(0xffE3E3E3)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                'High',
                style: TextStyle(
                  color: isActive[2] ? Colors.red : Colors.black,
                  fontSize: 16,
                  fontWeight: isActive[2] ? FontWeight.w700 : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
