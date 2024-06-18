class NewProductDetails {
  String? msg;
  String? selectVariant;
  String? apiList;
  int? variantColorListCount;
  int? variantStorageListCount;
  int? variantOtherListCount;
  List<DataProduct>? data;

  NewProductDetails(
      {this.msg,
        this.selectVariant,
        this.apiList,
        this.variantColorListCount,
        this.variantStorageListCount,
        this.variantOtherListCount,
        this.data});

  NewProductDetails.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    selectVariant = json['select_variant'];
    apiList = json['api_list'];
    variantColorListCount = json['variant_color_list_count'];
    variantStorageListCount = json['variant_storage_list_count'];
    variantOtherListCount = json['variant_other_list_count'];
    if (json['data'] != null) {
      data = <DataProduct>[];
      json['data'].forEach((v) {
        data!.add(new DataProduct.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['select_variant'] = this.selectVariant;
    data['api_list'] = this.apiList;
    data['variant_color_list_count'] = this.variantColorListCount;
    data['variant_storage_list_count'] = this.variantStorageListCount;
    data['variant_other_list_count'] = this.variantOtherListCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataProduct {
  List<ProductDeatils>? productDeatils;
  String? recentlyViewsProductList;
  List<RelatedProducts>? relatedProducts;

  DataProduct(
      {this.productDeatils,
        this.recentlyViewsProductList,
        this.relatedProducts});

  DataProduct.fromJson(Map<String, dynamic> json) {
    if (json['product_deatils'] != null) {
      productDeatils = <ProductDeatils>[];
      json['product_deatils'].forEach((v) {
        productDeatils!.add(new ProductDeatils.fromJson(v));
      });
    }
    recentlyViewsProductList = json['recently_views_product_list'];
    if (json['related_products'] != null) {
      relatedProducts = <RelatedProducts>[];
      json['related_products'].forEach((v) {
        relatedProducts!.add(new RelatedProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productDeatils != null) {
      data['product_deatils'] =
          this.productDeatils!.map((v) => v.toJson()).toList();
    }
    data['recently_views_product_list'] = this.recentlyViewsProductList;
    if (this.relatedProducts != null) {
      data['related_products'] =
          this.relatedProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductDeatils {
  String? storeName;
  bool? isActiveReplacement;
  String? returnAndRefundReplacementPolicy;
  String? timePeriodReplacementPolicy;
  String? isReplacementPolicyActive;
  String? validity;
  String? covers;
  String? typeAccepted;
  bool? isActiveReturn;
  String? replacementPolicy;
  bool? timePeriodReturnReplacementPolicy;
  bool? isReturnAndRefundPolicyActive;
  String? productId;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? title;
  String? hSN;
  String? description;
  String? productImage;
  String? slug;
  String? mainCategoryId;
  String? mainCategory;
  String? subCategoryId;
  String? subCategory;
  String? subSubCategoryId;
  String? subSubCategory;
  String? brandId;
  String? brandName;
  String? overview;
  String? videos;
  List<Null>? frequentlyBoughtTogether;
  String? variantColor;
  String? variantStorage;
  String? otherVariants;
  List<Null>? variantColorValue;
  List<Null>? variantStorageValue;
  List<Null>? otherVariantsValue;
  String? filtersType;
  List<ProductVariantValueList>? productVariantValueList;

  ProductDeatils(
      {this.storeName,
        this.isActiveReplacement,
        this.returnAndRefundReplacementPolicy,
        this.timePeriodReplacementPolicy,
        this.isReplacementPolicyActive,
        this.validity,
        this.covers,
        this.typeAccepted,
        this.isActiveReturn,
        this.replacementPolicy,
        this.timePeriodReturnReplacementPolicy,
        this.isReturnAndRefundPolicyActive,
        this.productId,
        this.metaTitle,
        this.metaDescription,
        this.metaKeyword,
        this.title,
        this.hSN,
        this.description,
        this.productImage,
        this.slug,
        this.mainCategoryId,
        this.mainCategory,
        this.subCategoryId,
        this.subCategory,
        this.subSubCategoryId,
        this.subSubCategory,
        this.brandId,
        this.brandName,
        this.overview,
        this.videos,
        this.frequentlyBoughtTogether,
        this.variantColor,
        this.variantStorage,
        this.otherVariants,
        this.variantColorValue,
        this.variantStorageValue,
        this.otherVariantsValue,
        this.filtersType,
        this.productVariantValueList});

  ProductDeatils.fromJson(Map<String, dynamic> json) {
    storeName = json['store_name'];
    isActiveReplacement = json['is_active_replacement'];
    returnAndRefundReplacementPolicy =
    json['return_and_refund_replacement_policy'];
    timePeriodReplacementPolicy = json['time_period_replacement_policy'];
    isReplacementPolicyActive = json['is_replacement_policy_active'];
    validity = json['validity'];
    covers = json['covers'];
    typeAccepted = json['type_accepted'];
    isActiveReturn = json['is_active_return'];
    replacementPolicy = json['replacement_policy'];
    timePeriodReturnReplacementPolicy =
    json['time_period_return_replacement_policy'];
    isReturnAndRefundPolicyActive = json['is_return_and_refund_policy_active'];
    productId = json['product_id'];
    metaTitle = json['Meta_Title'];
    metaDescription = json['Meta_Description'];
    metaKeyword = json['Meta_Keyword'];
    title = json['title'];
    hSN = json['HSN'];
    description = json['description'];
    productImage = json['product_image'];
    slug = json['slug'];
    mainCategoryId = json['main_category_id'];
    mainCategory = json['main_category'];
    subCategoryId = json['sub_category_id'];
    subCategory = json['sub_category'];
    subSubCategoryId = json['sub_sub_category_id'];
    subSubCategory = json['sub_sub_category'];
    brandId = json['brand_id'];
    brandName = json['brand_name'];
    overview = json['overview'];
    videos = json['videos'];
    if (json['frequently_bought_together'] != null) {
      frequentlyBoughtTogether = <Null>[];
      json['frequently_bought_together'].forEach((v) {
        // frequentlyBoughtTogether!.add(fromJson(v));
      });
    }
    variantColor = json['variant_color'];
    variantStorage = json['variant_storage'];
    otherVariants = json['other_variants'];
    if (json['variant_color_value'] != null) {
      variantColorValue = <Null>[];
      json['variant_color_value'].forEach((v) {
        // variantColorValue!.add(new Null.fromJson(v));
      });
    }
    if (json['variant_storage_value'] != null) {
      variantStorageValue = <Null>[];
      json['variant_storage_value'].forEach((v) {
        // variantStorageValue!.add(new Null.fromJson(v));
      });
    }
    if (json['other_variants_value'] != null) {
      otherVariantsValue = <Null>[];
      json['other_variants_value'].forEach((v) {
        // otherVariantsValue!.add(new Null.fromJson(v));
      });
    }
    filtersType = json['filters_type'];
    if (json['product_variant_value_list'] != null) {
      productVariantValueList = <ProductVariantValueList>[];
      json['product_variant_value_list'].forEach((v) {
        productVariantValueList!.add(new ProductVariantValueList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['store_name'] = this.storeName;
    data['is_active_replacement'] = this.isActiveReplacement;
    data['return_and_refund_replacement_policy'] =
        this.returnAndRefundReplacementPolicy;
    data['time_period_replacement_policy'] = this.timePeriodReplacementPolicy;
    data['is_replacement_policy_active'] = this.isReplacementPolicyActive;
    data['validity'] = this.validity;
    data['covers'] = this.covers;
    data['type_accepted'] = this.typeAccepted;
    data['is_active_return'] = this.isActiveReturn;
    data['replacement_policy'] = this.replacementPolicy;
    data['time_period_return_replacement_policy'] =
        this.timePeriodReturnReplacementPolicy;
    data['is_return_and_refund_policy_active'] =
        this.isReturnAndRefundPolicyActive;
    data['product_id'] = this.productId;
    data['Meta_Title'] = this.metaTitle;
    data['Meta_Description'] = this.metaDescription;
    data['Meta_Keyword'] = this.metaKeyword;
    data['title'] = this.title;
    data['HSN'] = this.hSN;
    data['description'] = this.description;
    data['product_image'] = this.productImage;
    data['slug'] = this.slug;
    data['main_category_id'] = this.mainCategoryId;
    data['main_category'] = this.mainCategory;
    data['sub_category_id'] = this.subCategoryId;
    data['sub_category'] = this.subCategory;
    data['sub_sub_category_id'] = this.subSubCategoryId;
    data['sub_sub_category'] = this.subSubCategory;
    data['brand_id'] = this.brandId;
    data['brand_name'] = this.brandName;
    data['overview'] = this.overview;
    data['videos'] = this.videos;
    if (this.frequentlyBoughtTogether != null) {
      // data['frequently_bought_together'] = this.frequentlyBoughtTogether!.map((v) => v.toJson()).toList();
    }
    data['variant_color'] = this.variantColor;
    data['variant_storage'] = this.variantStorage;
    data['other_variants'] = this.otherVariants;
    if (this.variantColorValue != null) {
      // data['variant_color_value'] = this.variantColorValue!.map((v) => v.toJson()).toList();
    }
    if (this.variantStorageValue != null) {
      // data['variant_storage_value'] = this.variantStorageValue!.map((v) => v.toJson()).toList();
    }
    if (this.otherVariantsValue != null) {
      // data['other_variants_value'] = this.otherVariantsValue!.map((v) => v.toJson()).toList();
    }
    data['filters_type'] = this.filtersType;
    if (this.productVariantValueList != null) {
      // data['product_variant_value_list'] = this.productVariantValueList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductVariantValueList {
  String? variantId;
  String? variantName;
  String? variantIsSubscriptionActive;
  int? rating;
  bool? bharatErpAssured;
  String? purchaseStatus;
  String? whishlistStatus;
  String? cartStatus;
  String? stockSataus;
  String? ratingStatus;
  String? colorVariantValuesId;
  String? colorVariantValues;
  String? storageVariantValuesId;
  String? storageVariantValues;
  String? otherVariantValuesId;
  String? otherVariantValues;
  String? variantImage;
  String? barCode;
  String? barCodeImage;
  String? quantity;
  String? actualPrice;
  String? variantPrice;
  String? discountPercent;
  String? length;
  String? breadth;
  String? height;
  String? weight;
  String? productId;
  List<VarientsMultipleImage>? varientsMultipleImage;
  List<Null>? productSpecification;
  List<Null>? protectionPlan;
  List<CouponsData>? couponsData;
  List<Null>? extendedWarranty;
  List<Null>? productRatingList;

  ProductVariantValueList(
      {this.variantId,
        this.variantName,
        this.variantIsSubscriptionActive,
        this.rating,
        this.bharatErpAssured,
        this.purchaseStatus,
        this.whishlistStatus,
        this.cartStatus,
        this.stockSataus,
        this.ratingStatus,
        this.colorVariantValuesId,
        this.colorVariantValues,
        this.storageVariantValuesId,
        this.storageVariantValues,
        this.otherVariantValuesId,
        this.otherVariantValues,
        this.variantImage,
        this.barCode,
        this.barCodeImage,
        this.quantity,
        this.actualPrice,
        this.variantPrice,
        this.discountPercent,
        this.length,
        this.breadth,
        this.height,
        this.weight,
        this.productId,
        this.varientsMultipleImage,
        this.productSpecification,
        this.protectionPlan,
        this.couponsData,
        this.extendedWarranty,
        this.productRatingList});

  ProductVariantValueList.fromJson(Map<String, dynamic> json) {
    variantId = json['variant_id'];
    variantName = json['variant_name'];
    variantIsSubscriptionActive = json['variant_is_subscription_active'];
    rating = json['rating'];
    bharatErpAssured = json['bharat_erp_assured'];
    purchaseStatus = json['purchase_status'];
    whishlistStatus = json['whishlist_status'];
    cartStatus = json['cart_status'];
    stockSataus = json['stock_sataus'];
    ratingStatus = json['rating_status'];
    colorVariantValuesId = json['color_variant_values_id'];
    colorVariantValues = json['color_variant_values'];
    storageVariantValuesId = json['storage_variant_values_id'];
    storageVariantValues = json['storage_variant_values'];
    otherVariantValuesId = json['other_variant_values_id'];
    otherVariantValues = json['other_variant_values'];
    variantImage = json['variant_image'];
    barCode = json['bar_code'];
    barCodeImage = json['bar_code_image'];
    quantity = json['quantity'];
    actualPrice = json['actual_price'];
    variantPrice = json['variant_price'];
    discountPercent = json['discount_percent'];
    length = json['length'];
    breadth = json['breadth'];
    height = json['height'];
    weight = json['weight'];
    productId = json['product_id'];
    if (json['varients_multiple_image'] != null) {
      varientsMultipleImage = <VarientsMultipleImage>[];
      json['varients_multiple_image'].forEach((v) {
        varientsMultipleImage!.add(new VarientsMultipleImage.fromJson(v));
      });
    }
    if (json['product_specification'] != null) {
      productSpecification = <Null>[];
      json['product_specification'].forEach((v) {
        // productSpecification!.add(new Null.fromJson(v));
      });
    }
    if (json['protection_plan'] != null) {
      protectionPlan = <Null>[];
      json['protection_plan'].forEach((v) {
        // protectionPlan!.add(new Null.fromJson(v));
      });
    }
    if (json['coupons_data'] != null) {
      couponsData = <CouponsData>[];
      json['coupons_data'].forEach((v) {
        couponsData!.add(new CouponsData.fromJson(v));
      });
    }
    if (json['extended_warranty'] != null) {
      extendedWarranty = <Null>[];
      json['extended_warranty'].forEach((v) {
        // extendedWarranty!.add(new Null.fromJson(v));
      });
    }
    if (json['product_rating_list'] != null) {
      productRatingList = <Null>[];
      json['product_rating_list'].forEach((v) {
        // productRatingList!.add(new Null.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['variant_id'] = this.variantId;
  //   data['variant_name'] = this.variantName;
  //   data['variant_is_subscription_active'] = this.variantIsSubscriptionActive;
  //   data['rating'] = this.rating;
  //   data['bharat_erp_assured'] = this.bharatErpAssured;
  //   data['purchase_status'] = this.purchaseStatus;
  //   data['whishlist_status'] = this.whishlistStatus;
  //   data['cart_status'] = this.cartStatus;
  //   data['stock_sataus'] = this.stockSataus;
  //   data['rating_status'] = this.ratingStatus;
  //   data['color_variant_values_id'] = this.colorVariantValuesId;
  //   data['color_variant_values'] = this.colorVariantValues;
  //   data['storage_variant_values_id'] = this.storageVariantValuesId;
  //   data['storage_variant_values'] = this.storageVariantValues;
  //   data['other_variant_values_id'] = this.otherVariantValuesId;
  //   data['other_variant_values'] = this.otherVariantValues;
  //   data['variant_image'] = this.variantImage;
  //   data['bar_code'] = this.barCode;
  //   data['bar_code_image'] = this.barCodeImage;
  //   data['quantity'] = this.quantity;
  //   data['actual_price'] = this.actualPrice;
  //   data['variant_price'] = this.variantPrice;
  //   data['discount_percent'] = this.discountPercent;
  //   data['length'] = this.length;
  //   data['breadth'] = this.breadth;
  //   data['height'] = this.height;
  //   data['weight'] = this.weight;
  //   data['product_id'] = this.productId;
  //   if (this.varientsMultipleImage != null) {
  //     data['varients_multiple_image'] =
  //         this.varientsMultipleImage!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.productSpecification != null) {
  //     // data['product_specification'] = this.productSpecification!.map((v) => v?.toJson()).toList();
  //   }
  //   if (this.protectionPlan != null) {
  //     // data['protection_plan'] = this.protectionPlan!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.couponsData != null) {
  //     data['coupons_data'] = this.couponsData!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.extendedWarranty != null) {
  //     // data['extended_warranty'] = this.extendedWarranty!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.productRatingList != null) {
  //     // data['product_rating_list'] = this.productRatingList!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class VarientsMultipleImage {
  String? variantImage;

  VarientsMultipleImage({this.variantImage});

  VarientsMultipleImage.fromJson(Map<String, dynamic> json) {
    variantImage = json['variant_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['variant_image'] = this.variantImage;
    return data;
  }
}

class CouponsData {
  String? storeName;
  String? user;
  String? offerType;
  String? purchaseUpto;
  String? mainCategoryName;
  String? productName;
  String? offerProduct;
  String? title;
  String? offerTag;
  String? validFrom;
  String? validTo;
  String? discount;
  String? discountAmount;
  String? createDate;
  String? active;

  CouponsData(
      {this.storeName,
        this.user,
        this.offerType,
        this.purchaseUpto,
        this.mainCategoryName,
        this.productName,
        this.offerProduct,
        this.title,
        this.offerTag,
        this.validFrom,
        this.validTo,
        this.discount,
        this.discountAmount,
        this.createDate,
        this.active});

  CouponsData.fromJson(Map<String, dynamic> json) {
    storeName = json['store_name'];
    user = json['user'];
    offerType = json['offer_type'];
    purchaseUpto = json['purchase_upto'];
    mainCategoryName = json['main_category_name'];
    productName = json['product_name'];
    offerProduct = json['offer_product'];
    title = json['title'];
    offerTag = json['offer_tag'];
    validFrom = json['valid_from'];
    validTo = json['valid_to'];
    discount = json['discount'];
    discountAmount = json['discount_amount'];
    createDate = json['create_date'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['store_name'] = this.storeName;
    data['user'] = this.user;
    data['offer_type'] = this.offerType;
    data['purchase_upto'] = this.purchaseUpto;
    data['main_category_name'] = this.mainCategoryName;
    data['product_name'] = this.productName;
    data['offer_product'] = this.offerProduct;
    data['title'] = this.title;
    data['offer_tag'] = this.offerTag;
    data['valid_from'] = this.validFrom;
    data['valid_to'] = this.validTo;
    data['discount'] = this.discount;
    data['discount_amount'] = this.discountAmount;
    data['create_date'] = this.createDate;
    data['active'] = this.active;
    return data;
  }
}

class RelatedProducts {
  String? productId;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? variantId;
  String? variantName;
  String? quantity;
  String? actualPrice;
  String? price;
  String? discountPercent;
  String? variantImage;
  String? stockSataus;
  String? title;
  String? hSN;
  String? description;
  String? productImage;
  String? slug;
  String? mainCategory;
  String? subCategory;
  String? subSubCategory;
  String? brandName;

  RelatedProducts(
      {this.productId,
        this.metaTitle,
        this.metaDescription,
        this.metaKeyword,
        this.variantId,
        this.variantName,
        this.quantity,
        this.actualPrice,
        this.price,
        this.discountPercent,
        this.variantImage,
        this.stockSataus,
        this.title,
        this.hSN,
        this.description,
        this.productImage,
        this.slug,
        this.mainCategory,
        this.subCategory,
        this.subSubCategory,
        this.brandName});

  RelatedProducts.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    metaTitle = json['Meta_Title'];
    metaDescription = json['Meta_Description'];
    metaKeyword = json['Meta_Keyword'];
    variantId = json['variant_id'];
    variantName = json['variant_name'];
    quantity = json['quantity'];
    actualPrice = json['actual_price'];
    price = json['price'];
    discountPercent = json['discount_percent'];
    variantImage = json['variant_image'];
    stockSataus = json['stock_sataus'];
    title = json['title'];
    hSN = json['HSN'];
    description = json['description'];
    productImage = json['product_image'];
    slug = json['slug'];
    mainCategory = json['main_category'];
    subCategory = json['sub_category'];
    subSubCategory = json['sub_sub_category'];
    brandName = json['brand_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['Meta_Title'] = this.metaTitle;
    data['Meta_Description'] = this.metaDescription;
    data['Meta_Keyword'] = this.metaKeyword;
    data['variant_id'] = this.variantId;
    data['variant_name'] = this.variantName;
    data['quantity'] = this.quantity;
    data['actual_price'] = this.actualPrice;
    data['price'] = this.price;
    data['discount_percent'] = this.discountPercent;
    data['variant_image'] = this.variantImage;
    data['stock_sataus'] = this.stockSataus;
    data['title'] = this.title;
    data['HSN'] = this.hSN;
    data['description'] = this.description;
    data['product_image'] = this.productImage;
    data['slug'] = this.slug;
    data['main_category'] = this.mainCategory;
    data['sub_category'] = this.subCategory;
    data['sub_sub_category'] = this.subSubCategory;
    data['brand_name'] = this.brandName;
    return data;
  }
}
