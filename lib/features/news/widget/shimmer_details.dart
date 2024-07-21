import 'package:flutter/material.dart';
import 'package:sdmanewsclientflutter/common/color-extension.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDetails extends StatelessWidget {
  const ShimmerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          Container(
            height: 250,
            color: Colors.white,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: context.height - 400,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 6,)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
