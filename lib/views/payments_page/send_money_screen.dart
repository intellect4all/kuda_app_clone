import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/models/beneficiary.dart';
import 'package:kuda_app_clone/services/data.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SendMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.chevron_left_rounded,
                            size: 35,
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
                          'Send Money',
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
                          StandardButton(
                            text: 'next',
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.5),
                          blurRadius: 1,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Free Transfers to other banks',
                          style: subTitleTextStyle.copyWith(
                              letterSpacing: 0.5, color: primaryColor),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '20',
                          style: boldTextStyle.copyWith(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          LineAwesomeIcons.clock,
                          color: Colors.green,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text('Beneficiaries', style: subTitleTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Data().beneficiaries.length,
                            itemBuilder: (context, index) {
                              var beneficiaries = [
                                Beneficiary(
                                    name: 'Choose beneficiary',
                                    bank: 'uk',
                                    accountNumber: ''),
                              ];
                              beneficiaries.addAll(Data().beneficiaries);
                              Map data = <String, String>{
                                "Kuda": 'assets/images/kuda.jpg',
                                "GTBank Plc": 'assets/images/GTBank_logo.png',
                                "United Bank of Africa":
                                    'assets/images/acceleres.png',
                                "Unknown Bank": 'assets/images/unknown.png',
                                'uk': "assets/images/resized-1.jpg"
                              };
                              return Container(
                                width: 65,
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(70),
                                      child: Image.asset(
                                        data[beneficiaries[index].bank],
                                        fit: BoxFit.fill,
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      beneficiaries[index].name,
                                      maxLines: 2,
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
