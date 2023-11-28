
import 'package:flutter/material.dart';
import 'Widget_InkWell.dart';

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
        scaffoldBackgroundColor: Colors.black87,
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

  Color colorIB = Colors.white60;
  Color colorTB = Colors.white60;
  Color colorIP = Colors.white60;
  Color colorIR = Colors.white60;
  Color colorIN = Colors.white60;

  bool isHovered = false;
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

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
                  Navig1ClassWidget(page: "1", colorIcon: Colors.white60, colorTexte: Colors.white60, colorBase: Colors.white, nameIcone: "home_filled", textePage: "Acceuil",),
                  
                  const SizedBox(width: 30.0),

                  // RECHERCHE
                  Navig1ClassWidget(page: "2", colorIcon: Colors.white60, colorTexte: Colors.white60, colorBase: Colors.white, nameIcone: "search_rounded", textePage: "Recherche",),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
              child: Row(
                children: [
                  // INSCRIPTION
                  Navig2ClassWidget(page: "3", colorIcon: Colors.white60, colorBase: Colors.white, nameIcone: "power_settings_new_outlined"),

                  const SizedBox(width: 10.0),

                  // CONNEXION
                  Navig2ClassWidget(page: "4", colorIcon: Colors.white60, colorBase: Colors.white, nameIcone: "login"),
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
                color: Colors.black38,
                borderRadius: BorderRadius.circular(8.0),
              ),
              
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              isHovered = true;
                              colorIB = Colors.white;
                              colorTB = Colors.white;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              isHovered = false;
                              colorIB = Colors.white60;
                              colorTB = Colors.white60;
                            });
                          },                   
                          cursor: SystemMouseCursors.click,
                          child: Tooltip(
                            message: "Réduire la Bibliothèque",
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                            preferBelow: true, 
                            verticalOffset: 20,
                            
                            child: Row(
                              children: [
                                Icon(
                                  Icons.library_books_outlined,
                                  color: colorIB,
                                ),

                                const SizedBox(width: 2.0),

                                Text(
                                  "Bibliothèque",
                                  style: TextStyle(
                                    fontSize: 19.0,
                                    color: colorTB,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              isHovered = true;
                              colorIP = Colors.white;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              isHovered = false;
                              colorIP = Colors.white60;
                            });
                          },                   
                          cursor: SystemMouseCursors.click,
                          child: Tooltip(
                            message: "Créer une playlist ou un dossier",
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                            preferBelow: true, 
                            verticalOffset: 20,
                            
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: colorIP,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 15.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                                width: 0.5,
                              ),
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 5.0),
                                  child: const Text(
                                    "Créer votre première playlist",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),          
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 5.0),
                                  child: const Text(
                                    "C'est simple, nous allons vous aider",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 0.0, top: 5.0, right: 15.0, bottom: 10.0),
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        isHovered1 = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        isHovered1 = false;
                                      });
                                    },                   
                                    cursor: SystemMouseCursors.click,
                                    
                                    child: Transform.scale(
                                      scale: isHovered1 ? 1.05 : 1.0,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print("Création d'une playlist");
                                        }, 
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8.0), 
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          "Créer une playlist",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                                width: 0.5,
                              ),
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 5.0),
                                  child: const Text(
                                    "Cherchons quelques podcasts auxquels vous abonner",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),          
                                    softWrap: true,
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  margin: const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 5.0),
                                  child: const Text(
                                    "C'est simple, nous allons vous aider",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 10.0),
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      setState(() {
                                        isHovered2 = true;
                                      });
                                    },
                                    onExit: (_) {
                                      setState(() {
                                        isHovered2 = false;
                                      });
                                    },                   
                                    cursor: SystemMouseCursors.click,
                                    child: Transform.scale(
                                      scale: isHovered2 ? 1.05 : 1.0,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print("Parcourir les Podcasts");
                                        }, 
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8.0), 
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          "Parcourir les PodCasts",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              print("Page des coockies");
                            },
                            child: const Text(
                              'Cookies',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0, bottom: 10.0),
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    isHovered3 = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    isHovered3 = false;
                                  });
                                },                   
                                cursor: SystemMouseCursors.click,
                                child: Transform.scale(
                                  scale: isHovered3 ? 1.05 : 1.0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Français");
                                    }, 
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0), 
                                          side: const BorderSide(
                                            color: Colors.white, 
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Français",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black54,
                  width: 0.5,
                ),
                color: Colors.black38,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Row(
                              children: [
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      isHovered = true;
                                      colorIR = Colors.white;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHovered = false;
                                      colorIR = Colors.white60;
                                    });
                                  },                   
                                  cursor: SystemMouseCursors.click,
                                  child: Tooltip(
                                    message: "Reculer",
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                    preferBelow: true, 
                                    verticalOffset: 20,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_back_ios_rounded,
                                          color: colorIR,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 5.0),

                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      isHovered = true;
                                      colorIN = Colors.white;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHovered = false;
                                      colorIN = Colors.white60;
                                    });
                                  },                   
                                  cursor: SystemMouseCursors.click,
                                  child: Tooltip(
                                    message: "Avancer",
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                    preferBelow: true, 
                                    verticalOffset: 20,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: colorIN,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 10.0,),
                                
                                // ListView(
                                //   children: [
                                //     Padding(
                                //       padding: const EdgeInsets.all(20.0), 
                                //       child: TextField(
                                //         decoration: InputDecoration(
                                //           contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                                //           border: OutlineInputBorder(
                                //             borderRadius: BorderRadius.circular(30.0),
                                //             borderSide: const BorderSide(width: 0.8),
                                //           ),
                                //           hintText: 'Recherche',
                                //           prefixIcon: const Icon(
                                //             Icons.search_rounded,
                                //             size: 30.0,
                                //           ), 
                                //           suffixIcon: IconButton(
                                //             icon: Icon(Icons.clear),
                                //             onPressed: () {

                                //             },
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                
                              ],
                            ),
                            Container(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [Colors.white24, Colors.white10],
                        ),
                      ),
                      child: Row(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
