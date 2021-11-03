import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/provider/app_provider.dart';
import 'package:naruto_shippuden_app/provider/moments_provider.dart';
import 'package:naruto_shippuden_app/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  // const AppState({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CharactersProvider(),lazy: false, ),
        ChangeNotifierProvider(create: (_)=>MomentsProvider(),lazy: false, )
      ],
      child: MyApp(),
      
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Naruto Shippuden',
     initialRoute: 'home',

     routes: getRouterApplication(),
     theme: ThemeData.light().copyWith(
       appBarTheme: AppBarTheme(
         color: Colors.indigo
       )
     )

    );
  }
}