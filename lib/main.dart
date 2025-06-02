import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticket_app1/base/bottom_nav_bar.dart';
import 'package:ticket_app1/base/utils/app_routes.dart';
import 'package:ticket_app1/screens/all_tickets.dart';
import 'package:ticket_app1/screens/home/all_hotels.dart';
import 'package:ticket_app1/screens/hotel_detail.dart';
import 'package:ticket_app1/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}