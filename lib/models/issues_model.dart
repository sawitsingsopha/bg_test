class Issues {
  List<ResultIssue> resultIssue;
  String code;
  String message;
  List<String> resultIssues;

  Issues({this.resultIssue, this.code, this.message});

  Issues.fromJson(Map<String, dynamic> json) {
    // if (json['result_issue'] != null) {
    //   resultIssue = new List<ResultIssue>();
    //   json['result_issue'].forEach((v) {
    //     resultIssue.add(new ResultIssue.fromJson(v));
    //   });
    // }
    
    var resultFromJson  = json['result_issue'];
    resultIssues = resultFromJson.cast<String>();
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    
    // if (this.resultIssue != null) {
    //   data['result_issue'] = this.resultIssue.map((v) => v.toJson()).toList();
    // }

    data['resultIssues'] = this.resultIssues;

    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}

class ResultIssue {
  String issueId;
  String title;
  String description;
  String fileType;
  String photo;
  String file;
  String youtubeUrl;
  String issuecatId;
  String issuecatSubId;
  String shareNum;
  String saveNum;
  String favoriteNum;
  Null veiwer;
  String typeIssue;
  String tag;
  String orderNo;
  String highlight;
  String createUser;
  String createIp;
  String createDate;
  String updateUser;
  String updateIp;
  String updateDate;
  String activeStatus;
  String factsheet;
  String vdo;
  String infoGraphic;
  String isStatus;

  ResultIssue(
      {this.issueId,
      this.title,
      this.description,
      this.fileType,
      this.photo,
      this.file,
      this.youtubeUrl,
      this.issuecatId,
      this.issuecatSubId,
      this.shareNum,
      this.saveNum,
      this.favoriteNum,
      this.veiwer,
      this.typeIssue,
      this.tag,
      this.orderNo,
      this.highlight,
      this.createUser,
      this.createIp,
      this.createDate,
      this.updateUser,
      this.updateIp,
      this.updateDate,
      this.activeStatus,
      this.factsheet,
      this.vdo,
      this.infoGraphic,
      this.isStatus});

  ResultIssue.fromJson(Map<String, dynamic> json) {
    issueId = json['issue_id'];
    title = json['title'];
    description = json['description'];
    fileType = json['file_type'];
    photo = json['photo'];
    file = json['file'];
    youtubeUrl = json['youtube_url'];
    issuecatId = json['issuecat_id'];
    issuecatSubId = json['issuecat_sub_id'];
    shareNum = json['share_num'];
    saveNum = json['save_num'];
    favoriteNum = json['favorite_num'];
    veiwer = json['veiwer'];
    typeIssue = json['type_issue'];
    tag = json['tag'];
    orderNo = json['order_no'];
    highlight = json['highlight'];
    createUser = json['create_user'];
    createIp = json['create_ip'];
    createDate = json['create_date'];
    updateUser = json['update_user'];
    updateIp = json['update_ip'];
    updateDate = json['update_date'];
    activeStatus = json['active_status'];
    factsheet = json['factsheet'];
    vdo = json['vdo'];
    infoGraphic = json['info_graphic'];
    isStatus = json['is_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['issue_id'] = this.issueId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['file_type'] = this.fileType;
    data['photo'] = this.photo;
    data['file'] = this.file;
    data['youtube_url'] = this.youtubeUrl;
    data['issuecat_id'] = this.issuecatId;
    data['issuecat_sub_id'] = this.issuecatSubId;
    data['share_num'] = this.shareNum;
    data['save_num'] = this.saveNum;
    data['favorite_num'] = this.favoriteNum;
    data['veiwer'] = this.veiwer;
    data['type_issue'] = this.typeIssue;
    data['tag'] = this.tag;
    data['order_no'] = this.orderNo;
    data['highlight'] = this.highlight;
    data['create_user'] = this.createUser;
    data['create_ip'] = this.createIp;
    data['create_date'] = this.createDate;
    data['update_user'] = this.updateUser;
    data['update_ip'] = this.updateIp;
    data['update_date'] = this.updateDate;
    data['active_status'] = this.activeStatus;
    data['factsheet'] = this.factsheet;
    data['vdo'] = this.vdo;
    data['info_graphic'] = this.infoGraphic;
    data['is_status'] = this.isStatus;
    return data;
  }
}