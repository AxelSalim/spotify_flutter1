import 'dart:ffi';

import 'package:flutter/material.dart';


Widget buildNavig1(Color colorIcon, Color colorTexte, Color colorBase, Color colorSouhaiter, String nameIcone, Int page) {
 
  return InkWell(
    onTap: () {
      getNumberPage(page);
    },
    onHover: (bool hover) {
      colorIcon = hover ? colorBase : colorSouhaiter;
      colorTexte = hover ? colorBase : colorSouhaiter;
    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          getIconData(nameIcone), 
          color: colorIcon,
        )
      ],
    ),
  );
}




Widget buildNavig2(Color colorIcon, Color colorBase, Color colorSouhaiter, String nameIcone, Int page) {
  return InkWell(
    onTap: () {
      getNumberPage(page);
    },
    onHover: (bool hover) {
      colorIcon = hover ? colorBase : colorSouhaiter;
    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          getIconData(nameIcone), 
          color: colorIcon,
        )
      ],
    ),
  );
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

String getNumberPage(Int number) {
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









