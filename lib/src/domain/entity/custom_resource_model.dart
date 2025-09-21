class CustomResource {
  final String title;
  final String description;
  final String resourceType;
  final String fileUrl;
  final String link;
  final String certification;
  final String thumbnail;
  final List<String> tags;
  final String id;
  final int views;
  final bool isLiked;
  final int createdAt;
  final String createdBy;
  final bool isApproved;
  final int likes;

  // Constructor
  CustomResource({
    required this.title,
    required this.description,
    required this.resourceType,
    required this.fileUrl,
    required this.link,
    required this.certification,
    required this.thumbnail,
    required this.tags,
    required this.id,
    required this.views,
    required this.isLiked,
    required this.createdAt,
    required this.createdBy,
    required this.isApproved,
    required this.likes,
  });

  // Factory method to create a CustomResource from a map (e.g., from JSON)
  factory CustomResource.fromMap(Map<String, dynamic> map) {
    return CustomResource(
      title: map['title'],
      description: map['description'],
      resourceType: map['resource_type'],
      fileUrl: map['file_url'],
      link: map['link'],
      certification: map['certification'],
      thumbnail: map['thumbnail'],
      tags: List<String>.from(map['tags']),
      id: map['id'],
      views: map['views'],
      isLiked: map['is_liked'],
      createdAt: map['created_at'],
      createdBy: map['created_by'],
      isApproved: map['is_approved'],
      likes: map['likes'],
    );
  }

  // Method to convert CustomResource to a map (e.g., for JSON encoding)
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'resource_type': resourceType,
      'file_url': fileUrl,
      'link': link,
      'certification': certification,
      'thumbnail': thumbnail,
      'tags': tags,
      'id': id,
      'views': views,
      'is_liked': isLiked,
      'created_at': createdAt,
      'created_by': createdBy,
      'is_approved': isApproved,
      'likes': likes,
    };
  }

  // The copyWith method to create a copy of the instance with some modified properties
  CustomResource copyWith({
    String? title,
    String? description,
    String? resourceType,
    String? fileUrl,
    String? link,
    String? certification,
    String? thumbnail,
    List<String>? tags,
    String? id,
    int? views,
    bool? isLiked,
    int? createdAt,
    String? createdBy,
    bool? isApproved,
    int? likes,
  }) {
    return CustomResource(
      title: title ?? this.title,
      description: description ?? this.description,
      resourceType: resourceType ?? this.resourceType,
      fileUrl: fileUrl ?? this.fileUrl,
      link: link ?? this.link,
      certification: certification ?? this.certification,
      thumbnail: thumbnail ?? this.thumbnail,
      tags: tags ?? this.tags,
      id: id ?? this.id,
      views: views ?? this.views,
      isLiked: isLiked ?? this.isLiked,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      isApproved: isApproved ?? this.isApproved,
      likes: likes ?? this.likes,
    );
  }
}
