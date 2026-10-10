import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Readystuff {
  TextStyle fontstyle({double? fontsize, int? fontwight, Color? color}) {
    return GoogleFonts.libreCaslonDisplay(
      fontSize: fontsize,
      fontWeight: fontwight != null ? FontWeight(fontwight) : FontWeight.normal,
      color: color ?? Colors.black,
    );
  }

  Text text({
    required String data,
    double? fontsize,
    int? fontwight,
    Color? color,
  }) {
    return Text(
      data,
      style: GoogleFonts.oswald(
        fontSize: fontsize,
        fontWeight: fontwight != null
            ? FontWeight(fontwight)
            : FontWeight.normal,
        color: color ?? Colors.black,
      ),
    );
  }

  TextStyle fontoswald({double? fontsize, int? fontwight, Color? color}) {
    return GoogleFonts.oswald(
      fontSize: fontsize,
      fontWeight: fontwight != null ? FontWeight(fontwight) : FontWeight.normal,
      color: color ?? Colors.black,
    );
  }
}

class AppColors {
  // Main Purple (Numbers, Circular Buttons, Slider Thumb, Selected Switch)
  static const Color primaryPurple = Color(0xFF8052C5);

  // Muted Label Gray (Text: "Age", "Weight (KG)", "Height (CM)", "Gender")
  static const Color labelText = Color(0xFF8E8D98);

  // Card Background (Light Off-White/Grey container background)
  static const Color cardBg = Color(0xFFF4F3F8);

  // Inactive Slider Track / Divider Line
  static const Color inactiveTrack = Color(0xFFDCDAE3);
}
