// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeupModel _$MakeupModelFromJson(Map<String, dynamic> json) => MakeupModel(
      id: json['id'] as int?,
      brand: json['brand'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      priceSign: json['priceSign'],
      currency: json['currency'],
      imageLink: json['imageLink'] as String?,
      productLink: json['productLink'] as String?,
      websiteLink: json['websiteLink'] as String?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      category: json['category'] as String?,
      productType: json['productType'] as String?,
      tagList: json['tagList'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      productApiUrl: json['productApiUrl'] as String?,
      apiFeaturedImage: json['apiFeaturedImage'] as String?,
    );

Map<String, dynamic> _$MakeupModelToJson(MakeupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'price': instance.price,
      'priceSign': instance.priceSign,
      'currency': instance.currency,
      'imageLink': instance.imageLink,
      'productLink': instance.productLink,
      'websiteLink': instance.websiteLink,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'productType': instance.productType,
      'tagList': instance.tagList,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'productApiUrl': instance.productApiUrl,
      'apiFeaturedImage': instance.apiFeaturedImage,
    };
