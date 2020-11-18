import 'package:flutter/material.dart';
import 'package:gibdd_templates_web/themes/styles.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(
            text: TextSpan(style: standardTextStyle, children: [
              TextSpan(
                text: "ГИБДД Помощник",
                style: standardTextBoldStyle,
              ),
              TextSpan(
                  text: ' - это приложение, которое позволяет подавать обращения в Государственную инспекцию ' +
                      'безопасности дорожного движения Россиийской Федерации (ГИБДД), а также отслеживать ход выполнения вашего обращения.' +
                      ' Если ваше обращение не получит ответа, приложение поможет составить обращение и отправить в прокуратуру.\n\n'),
              TextSpan(
                  text: 'Автор приложения никак не связан с ГИБДД. Все обращения отправляются напрямую в официальную' +
                      'интернет-приемную ГИБДД. Я как автор, никак не могу повлиять на скорость решения проблемы, либо на удачный исход.\n\n'),
              TextSpan(
                  text: 'При помощи данного приложения вы можете сообщить о:\n',
                  style: standardTextItalicStyle),
              TextSpan(text: '1. ямах на дороге\n'),
              TextSpan(text: '2. незаконной парковке\n'),
              TextSpan(text: '3. не работающим светофоре\n'),
              TextSpan(text: '4. парковке на газоне\n'),
              TextSpan(text: 'и других нарушениях ПДД\n'),
            ]),
          )
        ],
      ),
    );
  }
}
