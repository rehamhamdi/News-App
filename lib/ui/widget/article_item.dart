import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news/ui/screens/article_detials_view.dart';

//reusable widgets file
Widget buildArticleItem(context, article) {
  var urlToImage = article["urlToImage"];

  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticleDetailsView(
                    url: "${article["url"]}",
                  )));
    },
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: ConditionalBuilder(
                condition: urlToImage != null,
                builder: (context) => Image.network(
                      "${article["urlToImage"]}",
                      width: 300,
                      height: 160,
                    ),
                fallback: (context) => const Icon(
                      Icons.error,
                      color: Colors.blueAccent,
                    )),
          ),
          const SizedBox(height: 3),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              "${article["title"]}",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            "${article["publishedAt"]}",
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
  );
}
