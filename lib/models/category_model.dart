class Category {
  List<CategoryResult> result;
  String code;
  String message;

  Category({this.result, this.code, this.message});

  Category.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = new List<CategoryResult>();
      json['result'].forEach((v) {
        result.add(new CategoryResult.fromJson(v));
      });
    }
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}

class CategoryResult {
  String codeColor;
  String catImageMain;
  String catName;
  String issuecatId;

  CategoryResult({this.codeColor, this.catImageMain, this.catName, this.issuecatId});

  CategoryResult.fromJson(Map<String, dynamic> json) {
    codeColor = json['code_color'];
    catImageMain = json['cat_image_main'];
    catName = json['cat_name'];
    issuecatId = json['issuecat_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code_color'] = this.codeColor;
    data['cat_image_main'] = this.catImageMain;
    data['cat_name'] = this.catName;
    data['issuecat_id'] = this.issuecatId;
    return data;
  }
}