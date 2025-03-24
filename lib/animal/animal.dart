import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/animal.freezed.dart';
part 'generated/animal.g.dart';

@freezed
class Animal with _$Animal {
  const factory Animal({
    @Default('') String name,
    @Default('') String type,
    @Default(-1) int age,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
