import 'package:flutter/material.dart';
class CardItem{
  final IconData iconimage;
  final String title;
  const  CardItem({required this.iconimage,required this.title,});
}

List<CardItem> carditem = [
  CardItem(iconimage: Icons.food_bank, title: 'Food'),
  CardItem(iconimage: Icons.masks, title: 'Covid-19'),
  CardItem(iconimage: Icons.child_care, title: 'Baby Care'),
  CardItem(iconimage: Icons.electrical_services_outlined, title: 'Appliances'),
  CardItem(iconimage: Icons.food_bank_outlined, title: 'Fruits'),
  CardItem(iconimage: Icons.home, title: 'Home'),
  CardItem(iconimage: Icons.bike_scooter, title: 'Vehicle'),
  CardItem(iconimage: Icons.medical_services_outlined, title: 'Medicine'),
  CardItem(iconimage: Icons.home_work_outlined, title: 'Office'),
  CardItem(iconimage: Icons.cleaning_services, title: "Gardening"),
];