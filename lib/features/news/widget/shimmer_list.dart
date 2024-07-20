import 'package:flutter/material.dart';
import 'package:sdmanewsclientflutter/common/color-extension.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 10, // Adjust the count based on your needs
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 6,
                ),
                Container(
                  height: 80,
                  width: 70,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 20,
                      width: context.width - 100,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 20,
                      width: context.width - 100,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 20,
                      width: context.width - 100,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
