import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviateTheme {
  static const Color primaryColor = Color(0xffFF7A8A);
  static const Color foregroundColor = Color(0xff1D1F3E);
  static const Color scaffoldBackgroundColor = Color(0xff111536);

  static const Map<String, AssetImage> images = {
    'artist1': AssetImage('images/artist1.png'),
    'artist2': AssetImage('images/artist2.png'),
    'artist3': AssetImage('images/artist3.png'),
    'artist4': AssetImage('images/artist4.png'),
    'artist6': AssetImage('images/artist6.png'),
    'featureCard': AssetImage('images/featurecard.png'),
    'artistScreenimg': AssetImage('images/artistscreenimg.png'),
    'artist7': AssetImage('images/artist7.png'),
    'playerArtist': AssetImage('images/playerArtist.png'),
  };

  static const Map<String, AssetImage> icons = {
    'play': AssetImage('images/icons/play.png'),
    'back': AssetImage('images/icons/back.png'),
    'next': AssetImage('images/icons/next.png'),
    'share': AssetImage('images/icons/share.png'),
    'expandicon': AssetImage('images/icons/expandicon.png'),
    'playlist': AssetImage('images/icons/playlist.png'),
  };

  static final TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
        fontSize: 28.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
    displayMedium: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
        fontSize: 24.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
    displaySmall: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
    titleLarge: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
        fontSize: 16.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
    titleMedium: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
        fontSize: 14.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
    titleSmall: GoogleFonts.openSans(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: primaryColor,
        fontSize: 10.0,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
  );

  static final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    textTheme: textTheme,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

//Artist card
// heigh 120 * 120

// Featured card
// 330 * 198

//Elevated button (Add Your artist)
// 303 * 38

//   ButtonTheme(
//   alignedDropdown: true,
//   buttonColor: MyAppTheme.foregroundColor,
//   minWidth: 120,
//   child: ElevatedButton(
//     onPressed: () {},
//     child: Text('Foreground Button'),
//   ),
// ),    Saved for later.

// image: MyAppTheme.images['artist1'], Saved for later.
}
