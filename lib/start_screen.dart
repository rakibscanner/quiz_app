import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/decoration/colours.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.func,{super.key});

  final void Function() func;
  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER AND DART QUIZ',
              style: GoogleFonts.oswald(
              color: textColor,
              fontSize: 35,
            ),
            ),
            const SizedBox(height: 20),
            
            Image.asset('assets/images/logo1.png',
            width: 350,
            height: 400,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
            onPressed: func,
            style: ElevatedButton.styleFrom(
              foregroundColor:  textColor,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            child: const Icon(Icons.arrow_circle_right_outlined,
            size: 90,),
          )
          ],
        ),
    );
  }
}
