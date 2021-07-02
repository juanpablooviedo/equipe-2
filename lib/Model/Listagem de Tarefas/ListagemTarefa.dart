class Tarefa {
  int? id;
  String? title;
  String? description;
  bool? completed;
  String? color;
  String? publishedAt;
  Null createdBy;
  Null updatedBy;
  String? createdAt;
  String? updatedAt;

  Tarefa(
      {this.id,
      this.title,
      this.description,
      this.completed,
      this.color,
      this.publishedAt,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  Tarefa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    completed = json['completed'];
    color = json['color'];
    publishedAt = json['published_at'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['completed'] = this.completed;
    data['color'] = this.color;
    data['published_at'] = this.publishedAt;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
