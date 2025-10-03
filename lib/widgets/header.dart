import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Color(0xFF548FF),
        height: 200,
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 16 ,
          child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Bonjour Chef Fatma 👩‍🍳",
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.black.withAlpha(180),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Que voulez-vous cuisiner? ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black.withAlpha(180),

                      ),
                    )
                  ],
                )

              ],

          ),

    ),
    );

  }
}
