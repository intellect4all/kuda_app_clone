import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/models/beneficiary.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/recent_transactions_card.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';
import 'package:kuda_app_clone/views/payments_page/betting_screen.dart';
import 'package:kuda_app_clone/views/payments_page/electricity_screen.dart';
import 'package:kuda_app_clone/views/payments_page/internetScreen.dart';
import 'package:kuda_app_clone/views/payments_page/transport_screen.dart';
import 'package:kuda_app_clone/views/payments_page/tv_screen.dart';
import 'package:kuda_app_clone/views/payments_page/widgets/pay_bill_action.dart';
import 'package:kuda_app_clone/views/payments_page/widgets/payment_action_tile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PayBillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.chevron_left_rounded,
                          size: 35,
                          color: primaryColor,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Pay Bill',
                      style: boldTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    PayBillAction(
                        title: 'TV',
                        icon: Icons.tv_off_rounded,
                        action: () {
                          Get.to(() => TVScreen());
                        }),
                    PayBillAction(
                        title: 'Internet',
                        icon: Icons.web_rounded,
                        action: () {
                          Get.to(() => InternetScreen());
                        }),
                    PayBillAction(
                        title: 'Electricity',
                        icon: Icons.lightbulb,
                        action: () {
                          Get.to(() => ElectricityScreen());
                        }),
                    PayBillAction(
                        title: 'Betting',
                        icon: Icons.games,
                        action: () {
                          Get.to(() => BettingScreen());
                        }),
                    PayBillAction(
                        title: 'Transport & Toll',
                        icon: Icons.emoji_transportation,
                        action: () {
                          Get.to(() => TransportScreen());
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
