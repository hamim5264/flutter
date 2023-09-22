import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      debugShowCheckedModeBanner: true,
      title: "Theme and Theme Data",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 10,
          shadowColor: Colors.black,
        ),

        ///text_theme
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
          ),
          bodyLarge: TextStyle(
            fontSize: 24,
          ),
        ),

        ///textButton_theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            foregroundColor: Colors.red,
          ),
        ),

        ///elevated_button_theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            textStyle: TextStyle(
              fontSize: 16,
              letterSpacing: 1,
              wordSpacing:1,
            ),
          ),
        ),
      ),

      ///dark_theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          elevation: 10,
          shadowColor: Colors.red,
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }

}

class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme & Theme Data"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World", style: Theme.of(context).textTheme.bodyMedium,),
            Text("Hello World", style: Theme.of(context).textTheme.bodySmall,),
            Text("Hello World", style: Theme.of(context).textTheme.bodyLarge,),
            TextButton(onPressed: (){}, child: Text("Tap Here")),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
                onPressed: (){}, child: Text("Tap Here")
            ),
            ElevatedButton(onPressed: (){}, child: Text("Theme Data")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
                onPressed: (){}, child: Text("Theme Data")
            ),

          ],
        ),
      ),
    );
  }

}