import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String link;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.link,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      icon: Icons.smart_button_outlined,
      link: '/buttons'),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'un contenedor estilizado',
      icon: Icons.credit_card_outlined,
      link: '/cards'),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y Controlados',
      icon: Icons.refresh_rounded,
      link: '/progress'),
  MenuItem(
      title: 'Snackbars y dialogos',
      subtitle: 'Indicadores en la pantalla',
      icon: Icons.info_outline,
      link: '/snackbars'),
  //AnimatedContainer
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Contenedor animado',
      icon: Icons.check_box_outline_blank_rounded,
      link: '/animated'),
  MenuItem(
      title: 'UI Controls + Titles',
      subtitle: 'Controles de UI',
      icon: Icons.car_rental_outlined,
      link: '/ui-controls'),
];
