import 'package:flutter/material.dart';
import 'package:to_do_list_app/views/home_page.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 480,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Frame 28.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              'Task Management &\nTo-Do List',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 18),
            Text(
              textAlign: TextAlign.center,
              'This productive tool is designed to help\nyou better manage your task \nproject-wise conveniently!',
              style: TextStyle(color: Color(0xff6E6A7C), fontSize: 14),
            ),
            Spacer(flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: MaterialButton(
                height: 52,
                color: Color(0xff007AFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'Let’s Start',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/Arrow - Left.png'),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
