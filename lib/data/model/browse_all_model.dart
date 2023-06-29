class BrowseModel {
  String? title;
  String? image;
  String? subTitle;

  BrowseModel({
    this.title,
    this.image,
    this.subTitle,
  });


  BrowseModel.fromJson(Map<String?, dynamic> json) {
    title = json['title'];
    image = json['image'];
    subTitle = json['subTitle'];
  }

  Map<String?, dynamic> toJson() {
    final Map<String?, dynamic> data = <String?, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['subtitle'] = subTitle;
    return data;
  }
}