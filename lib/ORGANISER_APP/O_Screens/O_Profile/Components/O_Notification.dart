import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  bool email1 = false;
  bool email2 = false;
  bool email3 = false;
  bool pn1 = false;
  bool pn2 = false;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: mQuery.size.height * 0.17,
              color: const Color(0xffDEFBB8),
              child: Column(
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "Assets/ORGANISER_APP/Icons/Orders/formkit_arrowleft.svg"),
                        SizedBox(
                          width: mQuery.size.width * 0.185,
                        ),
                        const Text(
                          "Notifications",
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 24,
                            fontFamily: 'SatoshiBold',
                            height: 1.1,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: mQuery.size.height * 0.032),

            // LOGIN ALERTS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login Alerts",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5E6366),
                        fontFamily: 'SatoshiMedium'),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xff201335),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular'),
                            ),
                            Transform.scale(
                              scale: 0.75,
                              child: Switch(
                                value: email1,
                                activeColor: const Color(0xff8DC73F),
                                onChanged: (bool value) {
                                  setState(() {
                                    email1 = value;
                                  });
                                  // Handle switch value change
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.04,
                  ),
                ],
              ),
            ),

            // TRANSACTION ALERTS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Transaction Alerts",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5E6366),
                        fontFamily: 'SatoshiMedium'),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xff201335),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular'),
                            ),
                            Transform.scale(
                              scale: 0.75,
                              child: Switch(
                                value: email2,
                                activeColor: const Color(0xff8DC73F),
                                onChanged: (bool value) {
                                  setState(() {
                                    email2 = value;
                                  });
                                  // Handle switch value change
                                },
                                inactiveTrackColor: const Color(0xffD9D9D9),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.013,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.015,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Push Notifications",
                              style: TextStyle(
                                  color: Color(0xff201335),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular'),
                            ),
                            Transform.scale(
                              scale: 0.75,
                              child: Switch(
                                value: pn1,
                                activeColor: const Color(0xff8DC73F),
                                onChanged: (bool value) {
                                  setState(() {
                                    pn1 = value;
                                  });
                                  // Handle switch value change
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.04,
                  ),
                ],
              ),
            ),

            // ATTENDEES MESSAGE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Attendees Message",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5E6366),
                        fontFamily: 'SatoshiMedium'),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(
                                  color: Color(0xff201335),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular'),
                            ),
                            Transform.scale(
                              scale: 0.75,
                              child: Switch(
                                value: email3,
                                activeColor: const Color(0xff8DC73F),
                                onChanged: (bool value) {
                                  setState(() {
                                    email3 = value;
                                  });
                                  // Handle switch value change
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.013,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.015,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Push Notifications",
                              style: TextStyle(
                                  color: Color(0xff201335),
                                  fontSize: 16,
                                  fontFamily: 'SatoshiRegular'),
                            ),
                            Transform.scale(
                              scale: 0.75,
                              child: Switch(
                                value: pn2,
                                activeColor: const Color(0xff8DC73F),
                                onChanged: (bool value) {
                                  setState(() {
                                    pn2 = value;
                                  });
                                  // Handle switch value change
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.08,
                  ),
                  Container(
                    width: double.infinity,
                    height: mQuery.size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff201335)),
                    child: const Center(
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xffF1F1F2)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
