/*
@Serializable
data class ShortNewsModel(
    @SerialName("id")
    val id: Long = 0,
    @SerialName("image_url")
    val imageUrl:String="",
    @SerialName("title")
    val title:String="",
    @SerialName("update_time")
    val updateTime:String=""
)
* */

class NewsModel {
  final int id;
  final String imageUrl, title, updateTime, content;

  NewsModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.updateTime,
    required this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json['id'],
        imageUrl: json['image_url'],
        title: json['title'],
        updateTime: json['update_time'],
        content: json['content'],
      );
}
