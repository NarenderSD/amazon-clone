import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/auth/screens/auth_screen.dart';
import 'package:amazon/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
p  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          )
        ),
        // primarySwatch: Colors.blue,
      ),

      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}

// ye code home m likha tha learn karne k liye
    //   Scaffold(
    //     appBar: AppBar(title: Text('Hello'),),
    //     body: Column(
    //       children: [
    //         const Center(
    //           child: Text(
    //               'Flutter Demo Home Page'
    //           ),
    //         ),
    //         Builder(
    //           builder: (context) {
    //             return ElevatedButton(
    //               onPressed: () {
    //                 Navigator.pushNamed(context, AuthScreen.routeName);
    //               }, child: Text('Click'),);
    //           }
    //         ),
    //       ],
    //     ),
    //   ), //time 4:40
    // );

