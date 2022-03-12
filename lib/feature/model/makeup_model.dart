import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';
part 'makeup_model.g.dart';

@JsonSerializable()
class MakeupModel extends INetworkModel<MakeupModel> {
  MakeupModel({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
  });

  int? id;
  String? brand;
  String? name;
  String? price;
  dynamic priceSign;
  dynamic currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<dynamic>? tagList;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;

  @override
  MakeupModel fromJson(Map<String, dynamic> json) {
    return _$MakeupModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$MakeupModelToJson(this);
  }
}
