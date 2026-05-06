import 'dart:async';

import 'package:flutter/material.dart';

class AutoBanner extends StatefulWidget {
  const AutoBanner({super.key});

  @override
  State<AutoBanner> createState() => _AutoBannerState();
}

class _AutoBannerState extends State<AutoBanner> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  Timer? timer;

  final List<String> banners = [
    "assets/images/banners/main_banner1.png",
    "assets/images/banners/main_banner2.png",
    "assets/images/banners/main_banner3.png",
    "assets/images/banners/main_banner4.png",
    "assets/images/banners/main_banner5.png",
  ];

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_controller.hasClients) {
        currentIndex++;

        if (currentIndex >= banners.length) {
          currentIndex = 0;
        }

        _controller.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width / 2.5; // ⭐ 3:1 비율

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: banners.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // context.push('/payment_complete/34');
                  },
                  child: Image.asset(banners[index], fit: BoxFit.cover),
                );
              },
            ),

            /// 인디케이터
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  banners.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: currentIndex == index ? 14 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
