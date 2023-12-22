import 'package:chat_app/src/presentation/screen/chat/chat_screen.dart';
import 'package:chat_app/src/settings/settings_theme.dart';
import 'package:flutter/material.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      theme: AppTheme().getTheme(1),
      darkTheme: ThemeData.dark(),
      home: const ChatScreen(),
    );
  }
}
