import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';

class swiper extends StatelessWidget {
  const swiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      itemCount: images1.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(images1[index]),
            fit: BoxFit.cover,
          ),
        );
      },
      viewportFraction: 0.8,
      scale: 0.9,
      pagination: SwiperPagination(
        builder: DotSwiperPaginationBuilder(
            color: Colors.white60,
            activeColor: Colors.white70,
            size: 15,
            activeSize: 17),
      ),
    );
  }
}
