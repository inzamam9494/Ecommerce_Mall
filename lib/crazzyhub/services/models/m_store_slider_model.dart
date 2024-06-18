class MSliderStoreListModel {
  String? msg;
  int? count;
  List<SliderData>? data;
  String? token;

  MSliderStoreListModel({this.msg, this.count, this.data, this.token});

  MSliderStoreListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    count = json['count'];
    if (json['data'] != null) {
      data = <SliderData>[];
      json['data'].forEach((v) {
        data!.add(SliderData.fromJson(v));
      });
    }
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['msg'] = this.msg;
    data['count'] = this.count;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['token'] = this.token;
    return data;
  }
}

class SliderData {
  int? id;
  String? sliderSection;
  String? textShapeIcon;
  String? textIcon;
  String? image;
  String? mainTitle;
  String? description;
  String? buttonName;
  String? link;
  bool? isActiveForUser;
  int? store;
  int? category;

  SliderData(
      {this.id,
        this.sliderSection,
        this.textShapeIcon,
        this.textIcon,
        this.image,
        this.mainTitle,
        this.description,
        this.buttonName,
        this.link,
        this.isActiveForUser,
        this.store,
        this.category});

  SliderData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sliderSection = json['slider_section'];
    textShapeIcon = json['text_shape_icon'];
    textIcon = json['text_icon'];
    image = json['image'];
    mainTitle = json['main_title'];
    description = json['description'];
    buttonName = json['button_name'];
    link = json['link'];
    isActiveForUser = json['is_active_for_user'];
    store = json['store'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slider_section'] = this.sliderSection;
    data['text_shape_icon'] = this.textShapeIcon;
    data['text_icon'] = this.textIcon;
    data['image'] = this.image;
    data['main_title'] = this.mainTitle;
    data['description'] = this.description;
    data['button_name'] = this.buttonName;
    data['link'] = this.link;
    data['is_active_for_user'] = this.isActiveForUser;
    data['store'] = this.store;
    data['category'] = this.category;
    return data;
  }
}
