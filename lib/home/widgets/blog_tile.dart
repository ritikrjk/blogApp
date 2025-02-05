import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final String category;
  BlogTile({super.key, required this.category});

  Widget build(BuildContext context) {
    final List<String> item = List.generate(25, (i) => "$category Item $i");
    return ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.black))),
            height: 180,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        // 2 line of title
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "A way to heaven where i didnt know what was going to happen there and i was not intreted also",
                            maxLines: 2,
                            style: TextStyle(
                              letterSpacing: 0.01,
                              wordSpacing: 0.01,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        //1 line of desc
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "A way to heaven where i didnt know what was going to happen there and i was not intreted also",
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                    Image.network(
                      'https://example.com/non_existing_image.jpg', // Replace with an actual URL
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.error, color: Colors.red, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Failed to load image",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    //DateTime of Published
                    Text("Nov 27, 2024"),
                    SizedBox(
                      width: 15,
                    ),
                    // likes comments
                    Icon(Icons.thumb_up_outlined),
                    SizedBox(
                      width: 3,
                    ),
                    Text("50K"),
                    SizedBox(
                      width: 15,
                    ),
                    // comments
                    Icon(Icons.messenger_outline_rounded),
                    SizedBox(
                      width: 3,
                    ),
                    Text("10")
                    // options
                  ],
                )
              ],
            ),
          );
        });
  }
}
