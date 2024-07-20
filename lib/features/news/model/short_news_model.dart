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
import 'dart:convert';

class ShortNewsModel {
  final int id;
  final String imageUrl, title, updateTime;

  ShortNewsModel(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.updateTime});

  factory ShortNewsModel.fromJson(Map<String, dynamic> json) => ShortNewsModel(
      id: json['id'],
      imageUrl: json['image_url'],
      title: json['title'],
      updateTime: json['update_time']);
}
