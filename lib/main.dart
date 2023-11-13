
import 'package:amazon/common/widgets/bottom_bar.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/admin/screens/admin_screen.dart';
import 'package:amazon/features/auth/screens/auth_screen.dart';
import 'package:amazon/features/auth/services/auth_service.dart';
import 'package:amazon/providers/user_provider.dart';
import 'package:amazon/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        useMaterial3: true, // can remove this line
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
          ? const BottomBar()
          : const AdminScreen()
          : const AuthScreen(),
    );
  }
}








// import 'package:amazon/common/widgets/bottom_bar.dart';
// import 'package:amazon/constants/global_variables.dart';
// import 'package:amazon/features/admin/screens/admin_screen.dart';
// import 'package:amazon/features/auth/screens/auth_screen.dart';
// import 'package:amazon/features/auth/services/auth_service.dart';
// import 'package:amazon/providers/user_provider.dart';
// import 'package:amazon/router.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(
//       create: (context) => UserProvider(),
//     ),
//   ], child: const MyApp()));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final AuthService authService = AuthService();
//
//   @override
//   void initState() {
//     super.initState();
//     authService.getUserData(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Amazon Clone',
//       theme: ThemeData(
//         scaffoldBackgroundColor: GlobalVariables.backgroundColor,
//         colorScheme: const ColorScheme.light(
//           primary: GlobalVariables.secondaryColor,
//         ),
//         appBarTheme: const AppBarTheme(
//           elevation: 0,
//           iconTheme: IconThemeData(
//             color: Colors.black,
//           ),
//         ),
//         useMaterial3: true, // can remove this line
//       ),
//       onGenerateRoute: (settings) => generateRoute(settings),
//       home: Provider.of<UserProvider>(context).user.token.isNotEmpty
//           ? Provider.of<UserProvider>(context).user.type == 'user'
//           ? const BottomBar()
//           : const AdminScreen()
//           : const AuthScreen(),
//     );
//   }
// }










// import 'package:amazon/constants/global_variables.dart';
// import 'package:amazon/features/auth/screens/auth_screen.dart';
// import 'package:amazon/router.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Amazon Clone',
//       theme: ThemeData(
//         scaffoldBackgroundColor: GlobalVariables.backgroundColor,
//         colorScheme: const ColorScheme.light(
//             primary: GlobalVariables.secondaryColor
//         ),
//         appBarTheme: const AppBarTheme(
//           elevation: 0,
//           iconTheme: IconThemeData(
//             color: Colors.black,
//           )
//         ),
//         // primarySwatch: Colors.blue,
//       ),
//
//       //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       //   useMaterial3: true,
//       // ),
//       onGenerateRoute: (settings) => generateRoute(settings),
//       home: const AuthScreen(),
//     );
//   }
// }

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

