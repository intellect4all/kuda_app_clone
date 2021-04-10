import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/controllers/navigation_controller.dart';
import 'package:kuda_app_clone/controllers/paymentScreenController.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/home/home.dart';
import 'package:kuda_app_clone/views/more_screen/more_screen.dart';
import 'package:kuda_app_clone/views/payments_page/payments_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  final _navigationController = Get.put(NavigationController());
  final _paymentScreenController = Get.put(PaymentScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (_navigationController.selectedTab.value == 0) {
            return Home();
          } else if (_navigationController.selectedTab.value == 1) {
            return PaymentScreen();
          } else if (_navigationController.selectedTab.value == 2) {
          } else if (_navigationController.selectedTab.value == 3) {
          } else if (_navigationController.selectedTab.value == 4) {
            return MoreScreen();
          }
        },
      ),
      bottomNavigationBar: Obx(
        () => Container(
          width: Get.width,
          height: 60,
          padding: EdgeInsets.fromLTRB(30, 8, 30, 7),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Colors.grey.shade600),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _navigationController.selectedTab.value = 0;
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: _navigationController.selectedTab.value == 0
                          ? primaryColor
                          : primaryColor.withOpacity(0.5),
                    ),
                    Text(
                      'Home',
                      style: GoogleFonts.muli(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  _navigationController.selectedTab.value = 1;
                },
                child: Column(
                  children: [
                    Icon(
                      LineAwesomeIcons.money_bill,
                      size: 30,
                      color: _navigationController.selectedTab.value == 1
                          ? primaryColor
                          : primaryColor.withOpacity(0.5),
                    ),
                    Text(
                      'Payments',
                      style: GoogleFonts.muli(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(
                    LineAwesomeIcons.clock,
                    size: 30,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  Text(
                    'Budget',
                    style: GoogleFonts.muli(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    LineAwesomeIcons.credit_card,
                    size: 30,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  Text(
                    'Cards',
                    style: GoogleFonts.muli(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  _navigationController.selectedTab.value = 4;
                },
                child: Column(
                  children: [
                    Icon(
                      LineAwesomeIcons.clipboard_with_check,
                      size: 30,
                      color: _navigationController.selectedTab.value == 4
                          ? primaryColor
                          : primaryColor.withOpacity(0.5),
                    ),
                    Text(
                      'More',
                      style: GoogleFonts.muli(
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
