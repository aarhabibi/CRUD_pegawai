import 'package:flutter/material.dart';
import 'package:note_app_mysql/home.dart';
import 'package:note_app_mysql/login.dart';
        
        void main() => runApp(App());
        
        class App extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              // themeMode: ThemeMode.dark, 
              theme: ThemeData(
                primaryColor: Colors.black, 
                scaffoldBackgroundColor: Colors.blueGrey.shade900, 
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.transparent, 
                  elevation: 0
                )
              ),
              title: 'Flutter + PHP CRUD',
              initialRoute: '/',
              routes: {
                '/': (context) => login(),
              },
            );
          }
        }