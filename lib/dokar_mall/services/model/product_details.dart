class ProductDetails {
  final String message;
  final Data data;
  final List<RelatedProduct> relatedProducts;

  ProductDetails({
    required this.message,
    required this.data,
    required this.relatedProducts,
  });

  ProductDetails copyWith({
    String? message,
    Data? data,
    List<RelatedProduct>? relatedProducts,
  }) =>
      ProductDetails(
        message: message ?? this.message,
        data: data ?? this.data,
        relatedProducts: relatedProducts ?? this.relatedProducts,
      );
}

class Data {
  final int id;
  final String productVariantName;
  final String variantImage;
  final String barCode;
  final String barCodeImage;
  final String quantity;
  final int mrp;
  final int price;
  final int discountPercent;
  final int cgstPercent;
  final int sgstPercent;
  final int igstPercent;
  final String length;
  final String breadth;
  final String height;
  final String weight;
  final dynamic rating;
  final bool recommended;
  final String countRecommended;
  final bool websiteIsActive;
  final int product;
  final int colorVariantValue;
  final int storageVariantValue;
  final int otherVariantValue;
  final String wishListStatus;
  final String colorVariant;
  final String storageVariant;
  final String otherVariant;
  final List<VariantColorValue> variantColorValues;
  final List<Value> variantStorageValues;
  final List<Value> otherVariantValues;
  final String colorVariantName;
  final String storageVariantName;
  final String otherVariantName;
  final int categoryId;
  final int subcategoryId;
  final String subSubcategory;
  final int brandId;
  final String stockSataus;
  final String slug;
  final List<String> variantImages;
  final List<ProductSpecification> productSpecifications;
  final List<dynamic> coupons;
  final List<dynamic> protectionPlans;
  final List<dynamic> extendedWarranties;
  final List<dynamic> ratings;

  Data({
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
    required this.rating,
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
    required this.stockSataus,
    required this.slug,
    required this.variantImages,
    required this.productSpecifications,
    required this.coupons,
    required this.protectionPlans,
    required this.extendedWarranties,
    required this.ratings,
  });

  Data copyWith({
    int? id,
    String? productVariantName,
    String? variantImage,
    String? barCode,
    String? barCodeImage,
    String? quantity,
    int? mrp,
    int? price,
    int? discountPercent,
    int? cgstPercent,
    int? sgstPercent,
    int? igstPercent,
    String? length,
    String? breadth,
    String? height,
    String? weight,
    dynamic rating,
    bool? recommended,
    String? countRecommended,
    bool? websiteIsActive,
    int? product,
    int? colorVariantValue,
    int? storageVariantValue,
    int? otherVariantValue,
    String? wishListStatus,
    String? colorVariant,
    String? storageVariant,
    String? otherVariant,
    List<VariantColorValue>? variantColorValues,
    List<Value>? variantStorageValues,
    List<Value>? otherVariantValues,
    String? colorVariantName,
    String? storageVariantName,
    String? otherVariantName,
    int? categoryId,
    int? subcategoryId,
    String? subSubcategory,
    int? brandId,
    String? stockSataus,
    String? slug,
    List<String>? variantImages,
    List<ProductSpecification>? productSpecifications,
    List<dynamic>? coupons,
    List<dynamic>? protectionPlans,
    List<dynamic>? extendedWarranties,
    List<dynamic>? ratings,
  }) =>
      Data(
        id: id ?? this.id,
        productVariantName: productVariantName ?? this.productVariantName,
        variantImage: variantImage ?? this.variantImage,
        barCode: barCode ?? this.barCode,
        barCodeImage: barCodeImage ?? this.barCodeImage,
        quantity: quantity ?? this.quantity,
        mrp: mrp ?? this.mrp,
        price: price ?? this.price,
        discountPercent: discountPercent ?? this.discountPercent,
        cgstPercent: cgstPercent ?? this.cgstPercent,
        sgstPercent: sgstPercent ?? this.sgstPercent,
        igstPercent: igstPercent ?? this.igstPercent,
        length: length ?? this.length,
        breadth: breadth ?? this.breadth,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        rating: rating ?? this.rating,
        recommended: recommended ?? this.recommended,
        countRecommended: countRecommended ?? this.countRecommended,
        websiteIsActive: websiteIsActive ?? this.websiteIsActive,
        product: product ?? this.product,
        colorVariantValue: colorVariantValue ?? this.colorVariantValue,
        storageVariantValue: storageVariantValue ?? this.storageVariantValue,
        otherVariantValue: otherVariantValue ?? this.otherVariantValue,
        wishListStatus: wishListStatus ?? this.wishListStatus,
        colorVariant: colorVariant ?? this.colorVariant,
        storageVariant: storageVariant ?? this.storageVariant,
        otherVariant: otherVariant ?? this.otherVariant,
        variantColorValues: variantColorValues ?? this.variantColorValues,
        variantStorageValues: variantStorageValues ?? this.variantStorageValues,
        otherVariantValues: otherVariantValues ?? this.otherVariantValues,
        colorVariantName: colorVariantName ?? this.colorVariantName,
        storageVariantName: storageVariantName ?? this.storageVariantName,
        otherVariantName: otherVariantName ?? this.otherVariantName,
        categoryId: categoryId ?? this.categoryId,
        subcategoryId: subcategoryId ?? this.subcategoryId,
        subSubcategory: subSubcategory ?? this.subSubcategory,
        brandId: brandId ?? this.brandId,
        stockSataus: stockSataus ?? this.stockSataus,
        slug: slug ?? this.slug,
        variantImages: variantImages ?? this.variantImages,
        productSpecifications: productSpecifications ?? this.productSpecifications,
        coupons: coupons ?? this.coupons,
        protectionPlans: protectionPlans ?? this.protectionPlans,
        extendedWarranties: extendedWarranties ?? this.extendedWarranties,
        ratings: ratings ?? this.ratings,
      );
}

class Value {
  final int id;
  final String value;

  Value({
    required this.id,
    required this.value,
  });

  Value copyWith({
    int? id,
    String? value,
  }) =>
      Value(
        id: id ?? this.id,
        value: value ?? this.value,
      );
}

class ProductSpecification {
  final String specificationName;
  final List<ProductSpecificationValue> productSpecificationValues;

  ProductSpecification({
    required this.specificationName,
    required this.productSpecificationValues,
  });

  ProductSpecification copyWith({
    String? specificationName,
    List<ProductSpecificationValue>? productSpecificationValues,
  }) =>
      ProductSpecification(
        specificationName: specificationName ?? this.specificationName,
        productSpecificationValues: productSpecificationValues ?? this.productSpecificationValues,
      );
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

  ProductSpecificationValue copyWith({
    String? specificationValue,
    bool? keySpecification,
    String? specification,
  }) =>
      ProductSpecificationValue(
        specificationValue: specificationValue ?? this.specificationValue,
        keySpecification: keySpecification ?? this.keySpecification,
        specification: specification ?? this.specification,
      );
}

class VariantColorValue {
  final int id;
  final String value;
  final String variantImage;

  VariantColorValue({
    required this.id,
    required this.value,
    required this.variantImage,
  });

  VariantColorValue copyWith({
    int? id,
    String? value,
    String? variantImage,
  }) =>
      VariantColorValue(
        id: id ?? this.id,
        value: value ?? this.value,
        variantImage: variantImage ?? this.variantImage,
      );
}

class RelatedProduct {
  final int id;
  final String productVariantName;
  final String variantImage;
  final String barCode;
  final String barCodeImage;
  final String quantity;
  final int mrp;
  final int price;
  final double discountPercent;
  final double cgstPercent;
  final double sgstPercent;
  final int igstPercent;
  final String length;
  final String breadth;
  final String height;
  final String weight;
  final dynamic rating;
  final bool recommended;
  final String countRecommended;
  final bool websiteIsActive;
  final int product;
  final int colorVariantValue;
  final int storageVariantValue;
  final int otherVariantValue;
  final String colorVariantName;
  final String storageVariantName;
  final String otherVariantName;
  final String stockSataus;
  final String brandName;
  final String slug;

  RelatedProduct({
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
    required this.rating,
    required this.recommended,
    required this.countRecommended,
    required this.websiteIsActive,
    required this.product,
    required this.colorVariantValue,
    required this.storageVariantValue,
    required this.otherVariantValue,
    required this.colorVariantName,
    required this.storageVariantName,
    required this.otherVariantName,
    required this.stockSataus,
    required this.brandName,
    required this.slug,
  });

  RelatedProduct copyWith({
    int? id,
    String? productVariantName,
    String? variantImage,
    String? barCode,
    String? barCodeImage,
    String? quantity,
    int? mrp,
    int? price,
    double? discountPercent,
    double? cgstPercent,
    double? sgstPercent,
    int? igstPercent,
    String? length,
    String? breadth,
    String? height,
    String? weight,
    dynamic rating,
    bool? recommended,
    String? countRecommended,
    bool? websiteIsActive,
    int? product,
    int? colorVariantValue,
    int? storageVariantValue,
    int? otherVariantValue,
    String? colorVariantName,
    String? storageVariantName,
    String? otherVariantName,
    String? stockSataus,
    String? brandName,
    String? slug,
  }) =>
      RelatedProduct(
        id: id ?? this.id,
        productVariantName: productVariantName ?? this.productVariantName,
        variantImage: variantImage ?? this.variantImage,
        barCode: barCode ?? this.barCode,
        barCodeImage: barCodeImage ?? this.barCodeImage,
        quantity: quantity ?? this.quantity,
        mrp: mrp ?? this.mrp,
        price: price ?? this.price,
        discountPercent: discountPercent ?? this.discountPercent,
        cgstPercent: cgstPercent ?? this.cgstPercent,
        sgstPercent: sgstPercent ?? this.sgstPercent,
        igstPercent: igstPercent ?? this.igstPercent,
        length: length ?? this.length,
        breadth: breadth ?? this.breadth,
        height: height ?? this.height,
        weight: weight ?? this.weight,
        rating: rating ?? this.rating,
        recommended: recommended ?? this.recommended,
        countRecommended: countRecommended ?? this.countRecommended,
        websiteIsActive: websiteIsActive ?? this.websiteIsActive,
        product: product ?? this.product,
        colorVariantValue: colorVariantValue ?? this.colorVariantValue,
        storageVariantValue: storageVariantValue ?? this.storageVariantValue,
        otherVariantValue: otherVariantValue ?? this.otherVariantValue,
        colorVariantName: colorVariantName ?? this.colorVariantName,
        storageVariantName: storageVariantName ?? this.storageVariantName,
        otherVariantName: otherVariantName ?? this.otherVariantName,
        stockSataus: stockSataus ?? this.stockSataus,
        brandName: brandName ?? this.brandName,
        slug: slug ?? this.slug,
      );
}
