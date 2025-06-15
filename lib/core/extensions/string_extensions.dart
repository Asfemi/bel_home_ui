extension StringCasingExtension on String {
  String toTitleCase() =>
      isEmpty
          ? this
          : split(' ')
              .map(
                (str) =>
                    str.isEmpty
                        ? str
                        : '${str[0].toUpperCase()}${str.substring(1).toLowerCase()}',
              )
              .join(' ');

  String toSentenceCase() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String capitalize() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}
