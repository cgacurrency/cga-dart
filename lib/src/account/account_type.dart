/// Regex and prefix holder for account types.
class NanoAccountType {
  static const int CGA = 1;
  static const int XPD = 2;
  static const int CGAB = 3;
  static const String CGA_REGEX =
      r'(cga)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}';
  static const String CGAB_REGEX =
      r'(cgab)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}';
  static const String XPD_REGEX =
      r'(xpd)(_)(1|3)[13456789abcdefghijkmnopqrstuwxyz]{59}';

  static String getPrefix(int type) {
    switch (type) {
      case CGA:
        return 'cga_';
      case CGAB:
        return 'cgab_';
      case XPD:
        return 'xpd_';
      default:
        return 'cga_';
    }
  }

  static String getRegex(int type) {
    switch (type) {
      case CGA:
        return CGA_REGEX;
      case CGAB:
        return CGAB_REGEX;
      case XPD:
        return XPD_REGEX;
      default:
        return CGA_REGEX;
    }
  }
}
