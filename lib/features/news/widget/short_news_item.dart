import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sdmanewsclientflutter/common/color-extension.dart';
import 'package:sdmanewsclientflutter/common/time-extension.dart';
import 'package:sdmanewsclientflutter/features/news/model/short_news_model.dart';

class ShortNewsItem extends StatefulWidget {
  const ShortNewsItem({super.key, required this.item, required this.onPressed});

  final ShortNewsModel item;
  final VoidCallback onPressed;

  @override
  State<ShortNewsItem> createState() => _ShortNewsItemState();
}

class _ShortNewsItemState extends State<ShortNewsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: widget.onPressed,
        child: Row(
          children: [
            CachedNetworkImage(
              height: 70,
              width: 70,
              imageUrl: widget.item.imageUrl,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => Image.asset(
                "assets/img/pictures_error.png",
                height: 70,
                width: 70,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: context.width - 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.width - 110,
                        child: Text(
                          widget.item.title,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  TimeExtension.getDateInBeautyWay(widget.item.updateTime),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                  textDirection: TextDirection.ltr,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
