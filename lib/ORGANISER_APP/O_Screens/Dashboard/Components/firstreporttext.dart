import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/Demodata.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/Dashboard/Components/Profiles/ProfileDetails/ProfileDetails.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_AttendeesList/Attendees.dart';
import 'package:stub_guys/ORGANISER_APP/O_Screens/O_Support/O_SupportMain.dart';

class MyClickableText extends StatelessWidget {
  const MyClickableText({super.key});

  //Switchaccount
  void _switchaccountPopUp(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 15.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color(0xFF201335),
                        fontSize: 20,
                        fontFamily: 'SatoshiBold',
                        height: 1.1,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add_circle_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Add New",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF201335),
                            fontSize: 13,
                            fontFamily: 'SatoshiMedium',
                            height: 1.1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(profiles.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileDetails(
                                  profile: profiles[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(index == 0 ? 10 : 0),
                                bottom: Radius.circular(
                                    index == profiles.length - 1 ? 10 : 0),
                              ),
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 10),
                                  Text(profiles[index]['name']),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Reports for",
            style: TextStyle(
              color: Color(0xFF201335),
              fontSize: 16,
              fontFamily: 'SatoshiBold',
              height: 1.1,
            ),
          ),
          GestureDetector(
            onTap: () {
              _switchaccountPopUp(context);
            },
            child: const Text(
              " Stubguys Organiser",
              style: TextStyle(
                color: Color(0xFF8DC73F),
                fontSize: 16,
                fontFamily: 'SatoshiBold',
                height: 1.1,
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xFF8DC73F),
          )
        ],
      ),
    );
  }
}
