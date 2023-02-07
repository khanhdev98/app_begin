import 'package:equatable/equatable.dart';

class Gender extends Equatable {
  const Gender._(this.value);

  static List<Gender> values = [
    Gender.male(),
    Gender.female(),
  ];

  final String value;

  factory Gender.male() => const Gender._('M');

  factory Gender.female() => const Gender._('F');

  @override
  List<Object?> get props => [value];
}
