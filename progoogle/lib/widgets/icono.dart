import 'package:flutter/material.dart';

class Iconos extends StatelessWidget 
{
  const Iconos
({
  super.key,
  this.onPressed,
  required this.icon,
  this.color = Colors.black,
});
  
final Function()? onPressed;
final Color color;
final IconData icon;


  @override
  Widget build(BuildContext context) 
  {
    return IconButton
    (
      onPressed: onPressed,
      icon: Icon
      (
        icon,
        color: color,
        size: 28,
      ),
    );
  }
}