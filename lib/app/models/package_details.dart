import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_details.freezed.dart';
part 'package_details.g.dart';

@freezed
class PackageDetails with _$PackageDetails {
  factory PackageDetails({
    required String name,
    required Latest latest,
  }) = _PackageDetails;

  factory PackageDetails.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailsFromJson(json);
}

@freezed
class Latest with _$Latest {
  factory Latest({
    required Pubspec pubspec,
    required DateTime published,
  }) = _Latest;

  factory Latest.fromJson(Map<String, dynamic> json) => _$LatestFromJson(json);
}

@freezed
class Pubspec with _$Pubspec {
  factory Pubspec({
    required String name,
    required String description,
    required String version,
  }) = _Pubspec;

  factory Pubspec.fromJson(Map<String, dynamic> json) =>
      _$PubspecFromJson(json);
}
