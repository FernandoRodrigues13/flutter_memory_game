import 'package:flutter/material.dart';
import 'package:flutter_memory_game/theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Image.asset('images/host.png', width: 100, height: 100),
        ),
        Padding(
          //padding: preenchimento
          padding: const EdgeInsets.only(bottom: 20),
          child: RichText(
            text: TextSpan(
              text: 'Mascote ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 25),
              children: const [
                TextSpan(
                  text: 'Memory',
                  style: TextStyle(color: BrasileiraoTheme.color),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
