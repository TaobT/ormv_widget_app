import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[
  MenuItem(
  title: 'Botones',
  subTitle: 'Varios botones en Flutter',
  link: '/buttons',
  icon: Icons.smart_button),

  MenuItem(
  title: 'Tarjetas',
  subTitle: 'Un contenedor estilizado',
  link: '/cards',
  icon: Icons.card_travel),

  MenuItem(
  title: 'Progress Indicators',
  subTitle: 'Progresos generales y controlados',
  link: '/progress',
  icon: Icons.refresh),

  MenuItem(
  title: 'Snackbars y diálogos',
  subTitle: 'Indicadores en pantalla',
  link: '/snackbar',
  icon: Icons.message),

  MenuItem(
      title: 'Animated Container', 
      subTitle: 'Stateful widget animation', 
      link: '/animated', 
      icon: Icons.animation
    ),
];