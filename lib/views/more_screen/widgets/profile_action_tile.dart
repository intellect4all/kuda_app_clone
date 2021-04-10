import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kuda_app_clone/utilities/constants.dart';

class ProfileActionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function action;
  const ProfileActionTile({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        onTap: action,
        child: Container(
          padding: const EdgeInsets.fromLTRB(22, 8, 15, 8),
          margin: EdgeInsets.symmetric(vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      softWrap: null,
                      style: GoogleFonts.muli(
                        color: primaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      subtitle,
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
    );
  }
}
