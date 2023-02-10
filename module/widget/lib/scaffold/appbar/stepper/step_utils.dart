part of 'stepper_appbar_custom.dart';

class _Utils {
  static double getTextSize(
      String text, {
        TextStyle? style,
      }) {
    final TextPainter textPainter = TextPainter(
      maxLines: 1,
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: text,
        style: style,
      ),
    )..layout(
      minWidth: 0,
      maxWidth: double.infinity,
    );
    return textPainter.size.width;
  }
}