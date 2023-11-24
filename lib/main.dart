
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        brightness: Brightness.dark
      ),
      home: const MyHomePage(title: 'Spotify'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color colorIA = Colors.white60;
  Color colorTA = Colors.white60;
  Color colorIR = Colors.white60;
  Color colorTR = Colors.white60;
  Color colorII = Colors.white60;
  Color colorIL = Colors.white60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    print("Clique sur le Spotify");
                  },
                  child: const Text(
                    "Spotify",
                    style: TextStyle(
                      fontFamily: "BoldFont",
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
              child: Row(
                children: [
                  //  ACCEUIL
                  InkWell(
                    onTap: () {
                      print("Page d'Acceuil");
                    },
                    onHover: (bool hover) {
                      setState(() {
                        colorIA = hover ? Colors.white : Colors.white60;
                        colorTA = hover ? Colors.white : Colors.white60; 
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home_filled, 
                          color: colorIA,
                        ),

                        const SizedBox(width: 5.0),
                        
                        Text(
                          "Acceuil",
                          style: TextStyle(
                            fontSize: 19.0,
                            color: colorTA,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 30.0),

                  // RECHERCHE
                  InkWell(
                    onTap: () {
                      print("Page de Recherche");
                    },
                    onHover: (bool hover) {
                      setState(() {
                        colorIR = hover ? Colors.white : Colors.white60;
                        colorTR = hover ? Colors.white : Colors.white60; 
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.search_rounded, 
                          color: colorIR,
                        ),

                        const SizedBox(width: 5.0),
                        
                        Text(
                          "Recherche",
                          style: TextStyle(
                            fontSize: 19.0,
                            color: colorTR,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
              child: Row(
                children: [
                  // INSCRIPTION
                  InkWell(
                    onTap: () {
                      print("Page d'Inscription");
                    },
                    onHover: (bool hover) {
                      setState(() {
                        colorII = hover ? Colors.white : Colors.white60;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.power_settings_new_outlined, 
                          color: colorII,
                        ),                  
                      ],
                    ),
                  ),

                  const SizedBox(width: 10.0),

                  // CONNEXION
                  InkWell(
                    onTap: () {
                      print("Page de Connexion");
                    },
                    onHover: (bool hover) {
                      setState(() {
                        colorIL = hover ? Colors.white : Colors.white60;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.login, 
                          color: colorIL,
                        ),                  
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 0.5,
                ),
                // boxShadow: const [
                //   BoxShadow(
                //     color: Colors.black,
                //     offset: Offset(2.0, 2.0), 
                //     blurRadius: 5.0,      
                //     spreadRadius: 1.0,  
                //   ),
                // ],
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10.0),
              ),
              
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Row(
                      // Icon(
                      //   Icons.library_books_outlined
                      // ),
                    ),
                    Row(),
                    Row(),
                  ],
                )
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 0.5,
                ),
                // boxShadow: const [
                //   BoxShadow(
                //     color: Colors.grey,
                //     offset: Offset(2.0, 2.0), 
                //     blurRadius: 5.0,      
                //     spreadRadius: 1.0,  
                //   ),
                // ],
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            
          ),
        ],
      )
        // Column(
        //   children: <Widget>[            
        //     Container(
        //       margin: const EdgeInsets.all(10.0),
        //       width: 400.0,
            
        //       decoration: BoxDecoration(
        //         border: Border.all(
        //           color: Colors.black54,
        //           width: 0.5,
        //         ),
        //         color: Colors.black26,
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
              
        //       child: const Padding(
        //         padding: EdgeInsets.all(2.0),
        //         child: Column(
        //           children: [
        //             Row(
        //               // Icon(
        //               //   Icons.library_books_outlined
        //               // ),
        //             ),
        //             Row(),
        //             Row(),
        //           ],
        //         )
        //       ),
        //     ),


        //     const Expanded(
        //       child: Column(
        //         children: [
                  
        //         ]
              
        //       ),
        //     ),
        //   ],
        // ),
    );
  }
}
