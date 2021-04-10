import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:string_extensions/string_extensions.dart';

import 'package:kuda_app_clone/utilities/constants.dart';

class PaymentActionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function action;
  final IconData icon;
  const PaymentActionTile({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.action,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: action,
        child: Container(
          padding: const EdgeInsets.fromLTRB(22, 8, 15, 8),
          margin: EdgeInsets.symmetric(vertical:3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Positioned(
                      left: 4,
                      top: 0,
                      child: Container(
                        height: 30,
                        width: 25,
                        decoration: BoxDecoration(
                          color: accentColor.withOpacity(0.3),
                          border: Border.all(
                            color: primaryColor.withOpacity(0.3),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 4,
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 30,
                        width: 25,
                        decoration: BoxDecoration(
                          color: accentColor,
                          border: Border.all(
                            color: primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(
                          icon,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.trim().toTitleCase(),
                    style: GoogleFonts.muli(
                      color: primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    subtitle.trim().capitalize(),
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
                Icons.chevron_right_outlined,
                size: 30,
                color: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
