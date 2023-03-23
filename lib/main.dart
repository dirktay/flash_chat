import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:flash_chat/firebase_options.dart';

import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: const TextTheme(
      //     bodyLarge: TextStyle(color: Colors.black54),
      //   ),
      // ),
      // home: const WelcomeScreen(),
      initialRoute: WelcomeScreen.routeId,
      routes: {
        RegistrationScreen.routeId: (context) => const RegistrationScreen(),
        WelcomeScreen.routeId: (context) => const WelcomeScreen(),
        LoginScreen.routeId: (context) => const LoginScreen(),
        ChatScreen.routeId: (context) => const ChatScreen(),
      },
    );
  }
}
