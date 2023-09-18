String textLengthStyle(String txt, double length) {
  if (txt.length > length) {
    return txt.substring(0, length.toInt()) + "...";
  }
  return txt;
}
