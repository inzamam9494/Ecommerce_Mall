import 'dart:convert';

class Product {
  final int id;
  final String productVariantName;
  final String variantImage;
  final String barCode;
  final String barCodeImage;
  final int quantity;
  final double mrp;
  final double price;
  final double discountPercent;
  final double cgstPercent;
  final double sgstPercent;
  final double igstPercent;
  final double length;
  final double breadth;
  final double height;
  final double weight;
  final double? rating;
  final bool recommended;
  final int countRecommended;
  final bool websiteIsActive;
  final int product;
  final int colorVariantValue;
  final int storageVariantValue;
  final int otherVariantValue;
  final String wishListStatus;
  final String colorVariant;
  final String storageVariant;
  final String otherVariant;
  final List<VariantValue> variantColorValues;
  final List<VariantValue> variantStorageValues;
  final List<VariantValue> otherVariantValues;
  final String colorVariantName;
  final String storageVariantName;
  final String otherVariantName;
  final int categoryId;
  final int subcategoryId;
  final String subSubcategory;
  final int brandId;
  final String stockStatus;
  final String slug;
  final List<String> variantImages;
  final List<ProductSpecification> productSpecifications;

  Product({
    required this.id,
    required this.productVariantName,
    required this.variantImage,
    required this.barCode,
    required this.barCodeImage,
    required this.quantity,
    required this.mrp,
    required this.price,
    required this.discountPercent,
    required this.cgstPercent,
    required this.sgstPercent,
    required this.igstPercent,
    required this.length,
    required this.breadth,
    required this.height,
    required this.weight,
    this.rating,
    required this.recommended,
    required this.countRecommended,
    required this.websiteIsActive,
    required this.product,
    required this.colorVariantValue,
    required this.storageVariantValue,
    required this.otherVariantValue,
    required this.wishListStatus,
    required this.colorVariant,
    required this.storageVariant,
    required this.otherVariant,
    required this.variantColorValues,
    required this.variantStorageValues,
    required this.otherVariantValues,
    required this.colorVariantName,
    required this.storageVariantName,
    required this.otherVariantName,
    required this.categoryId,
    required this.subcategoryId,
    required this.subSubcategory,
    required this.brandId,
    required this.stockStatus,
    required this.slug,
    required this.variantImages,
    required this.productSpecifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      productVariantName: json['product_variant_name'],
      variantImage: json['variant_image'],
      barCode: json['bar_code'],
      barCodeImage: json['bar_code_image'],
      quantity: int.parse(json['quantity']),
      mrp: json['mrp'],
      price: json['price'],
      discountPercent: json['discount_percent'],
      cgstPercent: json['cgst_percent'],
      sgstPercent: json['sgst_percent'],
      igstPercent: json['igst_percent'],
      length: double.parse(json['length']),
      breadth: double.parse(json['breadth']),
      height: double.parse(json['height']),
      weight: double.parse(json['weight']),
      rating: json['rating'] != null ? double.parse(json['rating']) : null,
      recommended: json['recommended'],
      countRecommended: int.parse(json['count_recommended']),
      websiteIsActive: json['website_is_active'],
      product: json['product'],
      colorVariantValue: json['color_variant_value'],
      storageVariantValue: json['storage_variant_value'],
      otherVariantValue: json['other_variant_value'],
      wishListStatus: json['wish_list_status'],
      colorVariant: json['color_variant'],
      storageVariant: json['storage_variant'],
      otherVariant: json['other_variant'],
      variantColorValues: (json['variant_color_values'] as List)
          .map((i) => VariantValue.fromJson(i))
          .toList(),
      variantStorageValues: (json['variant_storage_values'] as List)
          .map((i) => VariantValue.fromJson(i))
          .toList(),
      otherVariantValues: (json['other_variant_values'] as List)
          .map((i) => VariantValue.fromJson(i))
          .toList(),
      colorVariantName: json['color_variant_name'],
      storageVariantName: json['storage_variant_name'],
      otherVariantName: json['other_variant_name'],
      categoryId: json['category_id'],
      subcategoryId: json['subcategory_id'],
      subSubcategory: json['sub_subcategory'] ?? '',
      brandId: json['brand_id'],
      stockStatus: json['stock_sataus'],
      slug: json['slug'],
      variantImages: List<String>.from(json['variant_images']),
      productSpecifications: (json['product_specifications'] as List)
          .map((i) => ProductSpecification.fromJson(i))
          .toList(),
    );
  }
}

class VariantValue {
  final int id;
  final String value;
  final String? variantImage;

  VariantValue({
    required this.id,
    required this.value,
    this.variantImage,
  });

  factory VariantValue.fromJson(Map<String, dynamic> json) {
    return VariantValue(
      id: json['id'],
      value: json['value'],
      variantImage: json['variant_image'],
    );
  }
}

class ProductSpecification {
  final String specificationName;
  final List<ProductSpecificationValue> productSpecificationValues;

  ProductSpecification({
    required this.specificationName,
    required this.productSpecificationValues,
  });

  factory ProductSpecification.fromJson(Map<String, dynamic> json) {
    return ProductSpecification(
      specificationName: json['specification_name'],
      productSpecificationValues: (json['product_specification_values'] as List)
          .map((i) => ProductSpecificationValue.fromJson(i))
          .toList(),
    );
  }
}

class ProductSpecificationValue {
  final String specificationValue;
  final bool keySpecification;
  final String specification;

  ProductSpecificationValue({
    required this.specificationValue,
    required this.keySpecification,
    required this.specification,
  });

  factory ProductSpecificationValue.fromJson(Map<String, dynamic> json) {
    return ProductSpecificationValue(
      specificationValue: json['specification_value'],
      keySpecification: json['key_specification'],
      specification: json['specification'],
    );
  }
}

