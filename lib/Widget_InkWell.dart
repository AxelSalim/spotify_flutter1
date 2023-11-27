import 'package:flutter/material.dart';


// Widget buildNavig1(String page, Color colorIcon, Color colorTexte, Color colorBase, String nameIcone, String textePage){
//   return InkWell(
//     onTap: () {
//       getNumberPage(page);
//     },
//     onHover: (bool hover) {
//       colorIcon = hover ? colorBase : colorIcon;
//       colorTexte = hover ? colorBase : colorTexte;
//     },
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(
//           getIconData(nameIcone), 
//           color: colorIcon,
//         ),
//         const SizedBox(width: 5.0),
//         Text(
//           textePage,
//           style: TextStyle(
//             fontSize: 19.0, 
//             color: colorTexte,
//           ),
//         ),
//       ],
//     ),
//   );
// }

class Navig1ClassWidget extends StatefulWidget {
  final String page;
  late Color colorIcon; 
  late Color colorTexte;
  final Color colorBase;
  final String nameIcone;
  final String textePage;

  Navig1ClassWidget({required this.page, required this.colorIcon, required this.colorTexte, required this.colorBase, required this.nameIcone, required this.textePage});

  @override
  State<Navig1ClassWidget> createState() => _Navig1ClassWidgetState();
}

class _Navig1ClassWidgetState extends State<Navig1ClassWidget> {
  bool hover = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: () {
      getNumberPage(widget.page);
    },
    onHover: (hover) {
      setState(() {
        widget.colorIcon = hover ? widget.colorBase : widget.colorIcon;
        widget.colorTexte = hover ? widget.colorBase : widget.colorTexte;
      });
    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          getIconData(widget.nameIcone), 
          color: widget.colorIcon,
        ),

        const SizedBox(width: 5.0),

        Text(
          widget.textePage,
          style: TextStyle(
            fontSize: 19.0, 
            color: widget.colorTexte,
          ),
        ),
      ],
    ),
  );
  }
}



// Widget buildNavig2(String page, Color colorIcon, Color colorBase, Color colorSouhaiter, String nameIcone, ) {
//   return InkWell(
//     onTap: () {
//       getNumberPage(page);
//     },
//     onHover: (bool hover) {
//       colorIcon = hover ? colorBase : colorSouhaiter;
//     },
//     child: Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(
//           getIconData(nameIcone), 
//           color: colorIcon,
//         )
//       ],
//     ),
//   );
// }

class Navig2ClassWidget extends StatefulWidget {
  final String page;
  late Color colorIcon; 
  final Color colorBase;
  final String nameIcone;

  Navig2ClassWidget({required this.page, required this.colorIcon, required this.colorBase, required this.nameIcone});

  @override
  State<Navig2ClassWidget> createState() => _Navig2ClassWidgetState();
}

class _Navig2ClassWidgetState extends State<Navig2ClassWidget> {
  bool hover = false;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: () {
      getNumberPage(widget.page);
    },
    onHover: (hover) {
      setState(() {
        widget.colorIcon = hover ? widget.colorBase : widget.colorIcon;
      });
    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          getIconData(widget.nameIcone), 
          color: widget.colorIcon,
        ),
      ],
    ),
  );
  }
}



IconData getIconData(String iconName) {
  switch (iconName) {
    case 'home_filled': 
      return Icons.home_filled;
    case 'search_rounded':
      return Icons.search_rounded;
    case 'power_settings_new_outlined':
      return Icons.power_settings_new_outlined;
    case 'login':
      return Icons.login;
    default:
      return Icons.error; 
    
  }
}

String getNumberPage(String number) {
  switch (number) {
    case "1":
      return 'Acceuil Page';
    case "2":
      return 'Recherche Page';
    case "3":
      return 'Inscription Page';
    case "4":
      return 'Connexion Page';
    default:
      return 'Error Page';
  }
}









