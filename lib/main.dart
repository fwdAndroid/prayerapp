import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prayerapp/Providers/idprovider.dart';
import 'package:prayerapp/authentication/loginpage.dart';
import 'package:prayerapp/location%20_screen/viewpage.dart';
import 'package:provider/provider.dart';
Future<void>main() async{
    WidgetsFlutterBinding.ensureInitialized();
   await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => IdProvider()),
      ],      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green,

)
        ),
        home: Login(),
      ),
    );
  }
}
