import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';
import 'package:kuda_app_clone/views/more_screen/profile_screen.dart';
import 'package:kuda_app_clone/views/payments_page/widgets/payment_action_tile.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
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
                  Expanded(
                    child: Center(
                      child: Text(
                        'More',
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
                        Stack(
                          children: [
                            Icon(
                              Icons.add_alert_rounded,
                              color: primaryColor,
                              size: 25,
                            ),
                            Positioned(
                              top: 4,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            )
                          ],
                        )
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
                      Card(
                        elevation: 1,
                        child: InkWell(
                          onTap: () {
                            Get.to(() => ProfileScreen());
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 18, 15, 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    child: Image.asset(
                                      'assets/images/resized-1.jpg',
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  flex: 8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Odewole, Olatunde Abdul-Jemeel',
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: null,
                                        style: GoogleFonts.muli(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        'Account Details',
                                        style: subTitleTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right_outlined,
                                  size: 30,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PaymentActionTile(
                        title: 'Statement & Reports',
                        subtitle: 'Download Monthly statements',
                        action: () {},
                        icon: Icons.bookmark,
                      ),
                      PaymentActionTile(
                          title: 'Saved Cards',
                          subtitle: 'Manage connected cards',
                          action: () {},
                          icon: Icons.atm_rounded),
                      PaymentActionTile(
                          title: 'Linked Accounts',
                          subtitle: 'Manage external accounts',
                          action: () {},
                          icon: Icons.supervised_user_circle),
                      PaymentActionTile(
                        title: 'Chat with us',
                        subtitle: 'Get support or send feedback',
                        action: () {},
                        icon: Icons.chat,
                      ),
                      PaymentActionTile(
                        title: 'Security',
                        subtitle: 'Protect yourself from intruders',
                        action: () {},
                        icon: Icons.lock,
                      ),
                      PaymentActionTile(
                        title: 'Referrals',
                        subtitle: 'Earn money when your friends join Kuda',
                        action: () {},
                        icon: Icons.tag,
                      ),
                      PaymentActionTile(
                        title: 'Accounts Limits',
                        subtitle: 'How much you can spend and receive',
                        action: () {},
                        icon: Icons.speed,
                      ),
                      PaymentActionTile(
                        title: 'Legal',
                        subtitle: 'About our contract with you',
                        action: () {},
                        icon: Icons.label,
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: Text(
                          'Sign out',
                          style: GoogleFonts.muli(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Text(
                          'version intellect',
                          style: GoogleFonts.muli(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
