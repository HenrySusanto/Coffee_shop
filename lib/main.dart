import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'slider_image.dart';
import 'constants.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Coffee App',
//       theme: ThemeData(
//           colorScheme: const ColorScheme.light().copyWith(primary: kPrimaryColor),
//           scaffoldBackgroundColor: Colors.white,
//           textTheme: const TextTheme(
//             bodyText1: TextStyle(color: ksecondaryColor),
//             bodyText2: TextStyle(color: ksecondaryColor),
//           )),
//       home: const SliderImage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context){
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(primary: kPrimaryColor),
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: ksecondaryColor),
            bodyText2: TextStyle(color: ksecondaryColor),
          )),
          home: const SliderImage(),
        );
      },),
    );
  }
}
