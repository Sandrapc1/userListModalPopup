import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userlist_modalpopup/src/views/userlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UserList MOdal Popup',
      theme: ThemeData(
        // useMaterial3: true,
        textTheme: GoogleFonts.expletusSansTextTheme(Theme.of(context).textTheme)
      ),
      home: const UserListScreen(),
    );
  }
}
