class StringUtils {
  static String addCommas(int number) {
    String numString = number.toString();
    String result = '';
    int len = numString.length;

    for (int i = 0; i < len; i++) {
      result += numString[i];

      if ((len - i - 1) % 3 == 0 && i != len - 1) {
        result += ',';
      }
    }

    return result;
  }
}
