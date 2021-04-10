import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/controllers/paymentScreenController.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/payments_page/buy_airtime_screen.dart';
import 'package:kuda_app_clone/views/payments_page/pay_bill_screen.dart';
import 'package:kuda_app_clone/views/payments_page/payment_link_screen.dart';
import 'package:kuda_app_clone/views/payments_page/send_money_screen.dart';
import 'package:kuda_app_clone/views/payments_page/web_payment_screen.dart';
import 'package:kuda_app_clone/views/payments_page/widgets/payment_action_tile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:string_extensions/string_extensions.dart';

class PaymentScreen extends StatelessWidget {
  final _paymentScreenController = Get.put(PaymentScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Payments',
                style: boldTextStyle,
              ),
            ),
            Divider(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/kuda.jpg',
                            fit: BoxFit.fill,
                            height: 10,
                            width: 10,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Friends on Kuda',
                          style: GoogleFonts.muli(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Friends on Kuda',
                                      style: GoogleFonts.muli(
                                        color: primaryColor,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Text(
                                        'NEW!',
                                        style: GoogleFonts.muli(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Find Your Contacts on Kuda.',
                                  style: subTitleTextStyle,
                                ),
                              ],
                            ),
                            Container(
                              height: 27,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Connect',
                                  style: GoogleFonts.muli(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 1),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    PaymentActionTile(
                        title: 'Send Money',
                        subtitle: 'Free transfers to all banks.',
                        icon: Icons.mobile_off_outlined,
                        action: () {
                          Get.to(() => SendMoneyScreen());
                        }),
                    SizedBox(height: 3),
                    PaymentActionTile(
                        title: 'Buy Airtime',
                        subtitle: 'Recharge any phone easily.',
                        icon: Icons.mobile_friendly,
                        action: () {
                          Get.to(() => BuyAirtimeScreen());
                        }),
                    SizedBox(height: 3),
                    PaymentActionTile(
                        title: 'Pay A Bill',
                        subtitle: 'Take care of your essentials.',
                        icon: Icons.bookmark,
                        action: () {
                          Get.to(() => PayBillScreen());
                        }),
                    SizedBox(height: 3),
                    PaymentActionTile(
                        title: 'Payment Link',
                        subtitle: 'Send money with a simple link.',
                        icon: Icons.link,
                        action: () {
                          Get.to(() => PaymentLinkScreen());
                        }),
                    SizedBox(height: 3),
                    PaymentActionTile(
                      title: 'web payment',
                      subtitle: 'pay online without your card.',
                      icon: Icons.web,
                      action: () {
                        Get.to(() => WebPaymentScreen());
                      },
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Send to Beneficiary',
                          style: boldTextStyle.copyWith(fontSize: 18),
                        ),
                        Container(
                          height: 27,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'View All',
                              style: GoogleFonts.muli(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: primaryColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: Data()
                            .beneficiaries
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color:
                                            _paymentScreenController.getColor(),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          _paymentScreenController
                                              .getAcronym(e.name),
                                          style: GoogleFonts.muli(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.name.toTitleCase(),
                                          style: GoogleFonts.muli(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          '${e.bank}: ${e.accountNumber}',
                                          style: subTitleTextStyle,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 35,
                                      color: Colors.grey.shade400,
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
