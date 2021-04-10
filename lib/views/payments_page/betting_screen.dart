import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/components/standardButton.dart';

class BettingScreen extends StatelessWidget {
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
                        'Betting',
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
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Service Provider',
                            style: labelTextStyle,
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintStyle: TextStyle(),
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Customer ID',
                                style: labelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: 'Customer ID',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Amount',
                                style: labelTextStyle,
                              ),
                              Text(
                                'Balance: #13.50',
                                style: labelTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          TextField(
                            cursorColor: primaryColor,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              hintText: '#0.00',
                              hintStyle: hintTextStyle,
                              contentPadding: EdgeInsets.all(16),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
