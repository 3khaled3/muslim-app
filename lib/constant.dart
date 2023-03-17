// ignore: camel_case_types
abstract class assets {
  static String logo = "assets/logo.png";
  static String quranicon = "assets/quranRail.png";
  static String lastreadicon = "assets/quran.png";
  static String bookmarkicon = "assets/bookmark.png";
  static String ramadanicon = "assets/ramadan.png";
  static String tasbehicon = "assets/tasbih.png";
  static String selectbookmark = "assets/selectbookmark.png";
}

double arabicFontSize = 24;




// ignore: non_constant_identifier_names
int JazNum(int pagenum) {
 // ignore: constant_identifier_names, non_constant_identifier_names
 final Map<int, int> Juznumber = {
  1: 1,
  2: 22,
  3: 42,
  4: 62,
  5: 82,
  6: 102,
  7: 121,
  8: 142,
  9: 162,
  10: 182,
  11: 201,
  12: 222,
  13: 242,
  14: 262,
  15: 282,
  16: 302,
  17: 322,
  18: 342,
  19: 362,
  20: 382,
  21: 402,
  22: 422,
  23: 442,
  24: 462,
  25: 482,
  26: 502,
  27: 522,
  28: 542,
  29: 562,
  30: 582,
    31: 604,
};
  for (int i = 1; i <30; i++) {
    if (pagenum >= (Juznumber[i])! && pagenum <(Juznumber[i+1])!) {
      print(i);
      return i;
    }
  }
  return 30;
}
