import 'dart:math';

class StringUtils {
  static String generateUniqueCode(int length) {
    Random random = Random();
    String characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    String code = '';

    for (int i = 0; i < length; i++) {
      int randomIndex = random.nextInt(characters.length);
      code += characters[randomIndex];
    }

    return code;
  }
}
