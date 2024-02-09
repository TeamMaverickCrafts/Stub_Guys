import 'package:flutter/material.dart';
import 'package:stub_guys/ATTANDEE_APP/A_Screens/HomeFeeds/HomeFeed.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/CreateEvents/Process/CE_Step1.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/O_DashboardHome.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/ManageOrders/O_ManageOrders.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_SupportMain.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_fullarticle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stub Guys',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeFeed());
  }
}
