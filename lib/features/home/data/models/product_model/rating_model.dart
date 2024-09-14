import 'package:equatable/equatable.dart';

class RatingModel extends Equatable {
  final double? rate;
  final int? count;

  const RatingModel({this.rate, this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        rate: (json['rate'] as num?)?.toDouble(),
        count: json['count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'rate': rate,
        'count': count,
      };

  @override
  List<Object?> get props => [rate, count];
}
