import 'package:app_movij/pages/home.dart';
import 'package:app_movij/pages/juegos/lenguaje/LamparaPage.dart';
import 'package:app_movij/pages/juegos/lenguaje/TiempoMenu.dart';
import 'package:app_movij/components/add_game.dart';
import 'package:app_movij/utils/flame_const.dart';
import 'package:flame/flame.dart';
import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF092234),
  ));
  Util flameUtil = Util();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  runApp(MyApp());
  Flame.audio.load('play.wav');

  FlameConst.miFlameUtil = flameUtil;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movij',
      initialRoute: '/',
      routes: {
        '/': (BuildContext ct) => HomePage(),
        // Juegos
        'juego/tl/tiempo': (BuildContext ct) => MenuTiempoPage(),
        'juego/tl/luz': (BuildContext ct) => LamparaPage(),

        // Juego Page
        'jugar': (BuildContext ct) => AddGame()
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(52, 73, 94, 1.0),
        accentColor: Color.fromRGBO(39, 174, 96, 1.0),
      ),
    );
  }
}
