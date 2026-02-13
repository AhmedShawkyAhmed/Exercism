class AtbashCipher {
  final _alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final _reversed = 'zyxwvutsrqponmlkjihgfedcba';

  String encode(String input) {
    final buffer = StringBuffer();
    final clean = input.toLowerCase();

    for (var char in clean.split('')) {
      if (_alphabet.contains(char)) {
        int index = _alphabet.indexOf(char);
        buffer.write(_reversed[index]);
      } else if (RegExp(r'\d').hasMatch(char)) {
        buffer.write(char);
      }
      // ignore punctuation
    }

    return _groupByFive(buffer.toString());
  }

  String decode(String input) {
    final buffer = StringBuffer();
    final clean = input.toLowerCase();

    for (var char in clean.split('')) {
      if (_reversed.contains(char)) {
        int index = _reversed.indexOf(char);
        buffer.write(_alphabet[index]);
      } else if (RegExp(r'\d').hasMatch(char)) {
        buffer.write(char);
      }
      // ignore spaces & punctuation
    }

    return buffer.toString();
  }

  String _groupByFive(String text) {
    final chunks = <String>[];

    for (int i = 0; i < text.length; i += 5) {
      chunks.add(
        text.substring(i, i + 5 > text.length ? text.length : i + 5),
      );
    }

    return chunks.join(' ');
  }
}
