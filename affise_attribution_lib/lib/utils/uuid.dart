import 'dart:math';

class Uuid {
  static String generate() {
    const String hexDigits = "0123456789abcdef";
    Random random = Random(DateTime.now().microsecondsSinceEpoch);
    final List<String> uuid = List.filled(36, "0");

    for (int i = 0; i < 36; i++) {
      final int hexPos = random.nextInt(16);
      uuid[i] = (hexDigits.substring(hexPos, hexPos + 1));
    }

    int pos = (int.parse(uuid[19], radix: 16) & 0x3) | 0x8;
    uuid[14] = "4";
    uuid[19] = hexDigits.substring(pos, pos + 1);
    uuid[8] = uuid[13] = uuid[18] = uuid[23] = "-";

    final StringBuffer buffer = StringBuffer();
    buffer.writeAll(uuid);
    return buffer.toString();
  }
}
