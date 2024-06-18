class BestSellerProductModel {
  String? msg;
  int? count;
  int? totalPages;
  Data? data;
  String? token;

  BestSellerProductModel(
      {this.msg, this.count, this.totalPages, this.data, this.token});

  BestSellerProductModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    count = json['count'];
    totalPages = json['total_pages'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['count'] = this.count;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  List<ProductList>? productList;

  Data({this.productList});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['product_list'] != null) {
      productList = <ProductList>[];
      json['product_list'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productList != null) {
      data['product_list'] = this.productList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductList {
  String? whishlistStatus;
  String? addToCartStatus;
  String? id;
  String? variantId;
  String? variantName;
  String? actualPrice;
  String? price;
  String? discountPercent;
  String? quantity;
  List<VarientsMultipleImage>? varientsMultipleImage;
  String? stockSataus;
  String? metaTitle;
  String? metaDescription;
  String? metaKeyword;
  String? title;
  String? hSN;
  String? description;
  String? image;
  String? arrivingSoon;
  String? showForUser;
  String? isBestseller;
  String? adminPermission;
  String? lasteditDate;
  String? storeId;
  String? storeOrdering;
  String? storeName;
  String? slug;
  String? mainCategoryId;
  String? mainCategory;
  String? subCategoryId;
  String? subCategory;
  String? subSubCategoryId;
  String? subSubCategory;
  String? brandId;
  String? brandName;
  String? permission;

  ProductList(
      {this.whishlistStatus,
        this.addToCartStatus,
        this.id,
        this.variantId,
        this.variantName,
        this.actualPrice,
        this.price,
        this.discountPercent,
        this.quantity,
        this.varientsMultipleImage,
        this.stockSataus,
        this.metaTitle,
        this.metaDescription,
        this.metaKeyword,
        this.title,
        this.hSN,
        this.description,
        this.image,
        this.arrivingSoon,
        this.showForUser,
        this.isBestseller,
        this.adminPermission,
        this.lasteditDate,
        this.storeId,
        this.storeOrdering,
        this.storeName,
        this.slug,
        this.mainCategoryId,
        this.mainCategory,
        this.subCategoryId,
        this.subCategory,
        this.subSubCategoryId,
        this.subSubCategory,
        this.brandId,
        this.brandName,
        this.permission});

  ProductList.fromJson(Map<String, dynamic> json) {
    whishlistStatus = json['whishlist_status'];
    addToCartStatus = json['add_to_cart_status'];
    id = json['id'];
    variantId = json['variant_id'];
    variantName = json['variant_name'];
    actualPrice = json['actual_price'];
    price = json['price'];
    discountPercent = json['discount_percent'];
    quantity = json['quantity'];
    if (json['varients_multiple_image'] != null) {
      varientsMultipleImage = <VarientsMultipleImage>[];
      json['varients_multiple_image'].forEach((v) {
        varientsMultipleImage!.add(new VarientsMultipleImage.fromJson(v));
      });
    }
    stockSataus = json['stock_sataus'];
    metaTitle = json['Meta_Title'];
    metaDescription = json['Meta_Description'];
    metaKeyword = json['Meta_Keyword'];
    title = json['title'];
    hSN = json['HSN'];
    description = json['description'];
    image = json['image'];
    arrivingSoon = json['arriving_soon'];
    showForUser = json['show_for_user'];
    isBestseller = json['is_bestseller'];
    adminPermission = json['admin_permission'];
    lasteditDate = json['lastedit_date'];
    storeId = json['store_id'];
    storeOrdering = json['store_ordering'];
    storeName = json['store_name'];
    slug = json['slug'];
    mainCategoryId = json['main_category_id'];
    mainCategory = json['main_category'];
    subCategoryId = json['sub_category_id'];
    subCategory = json['sub_category'];
    subSubCategoryId = json['sub_sub_category_id'];
    subSubCategory = json['sub_sub_category'];
    brandId = json['brand_id'];
    brandName = json['brand_name'];
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['whishlist_status'] = this.whishlistStatus;
    data['add_to_cart_status'] = this.addToCartStatus;
    data['id'] = this.id;
    data['variant_id'] = this.variantId;
    data['variant_name'] = this.variantName;
    data['actual_price'] = this.actualPrice;
    data['price'] = this.price;
    data['discount_percent'] = this.discountPercent;
    data['quantity'] = this.quantity;
    if (this.varientsMultipleImage != null) {
      data['varients_multiple_image'] =
          this.varientsMultipleImage!.map((v) => v.toJson()).toList();
    }
    data['stock_sataus'] = this.stockSataus;
    data['Meta_Title'] = this.metaTitle;
    data['Meta_Description'] = this.metaDescription;
    data['Meta_Keyword'] = this.metaKeyword;
    data['title'] = this.title;
    data['HSN'] = this.hSN;
    data['description'] = this.description;
    data['image'] = this.image;
    data['arriving_soon'] = this.arrivingSoon;
    data['show_for_user'] = this.showForUser;
    data['is_bestseller'] = this.isBestseller;
    data['admin_permission'] = this.adminPermission;
    data['lastedit_date'] = this.lasteditDate;
    data['store_id'] = this.storeId;
    data['store_ordering'] = this.storeOrdering;
    data['store_name'] = this.storeName;
    data['slug'] = this.slug;
    data['main_category_id'] = this.mainCategoryId;
    data['main_category'] = this.mainCategory;
    data['sub_category_id'] = this.subCategoryId;
    data['sub_category'] = this.subCategory;
    data['sub_sub_category_id'] = this.subSubCategoryId;
    data['sub_sub_category'] = this.subSubCategory;
    data['brand_id'] = this.brandId;
    data['brand_name'] = this.brandName;
    data['permission'] = this.permission;
    return data;
  }
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
