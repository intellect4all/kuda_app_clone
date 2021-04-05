import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:string_extensions/string_extensions.dart';

class StandardButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const StandardButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text.capitalize(),
          style: GoogleFonts.muli(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor:
              onPressed != null ? primaryColor : primaryColor.withOpacity(0.5),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 1),
          
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
