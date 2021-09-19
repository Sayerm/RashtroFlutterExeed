import 'package:flutter/material.dart';

Color primaryColor = HexColor.fromHex("#4ad395");
Color primaryLightColor = HexColor.fromHex("#82ffc6");
Color primaryDarkSecondary = HexColor.fromHex("#00a167");
Color primaryTextColor = HexColor.fromHex("#000000");
Color colorOnProgress = HexColor.fromHex("#5A5A5A");
Color backgroundColor = HexColor.fromHex("#CDCDCD");
Color primaryTransparent = HexColor.fromHex("#2D4AD395");
const String drainIcon="assets/images/drain.svg";
const String floodIcon="assets/images/flood.svg";
const String roadIcon="assets/images/road.svg";
const String publicToiletIcon="assets/images/public_toilet.svg";
const String encroachmentIcon="assets/images/encroachment.svg";
const String garbageIcon="assets/images/garbage.svg";
const String streetLightIcon="assets/images/street_light.svg";
const String mosquitoIcon="assets/images/mosquito.svg";
const String taxIcon="assets/images/tax.svg";
const String NIDIcon="assets/images/id_card.svg";
const String birthCertificateIcon="assets/images/certificate.svg";
const String drivingLicenseIcon="assets/images/driver_license.svg";
// Color red = HexColor.fromHex("#ffff4444");

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
