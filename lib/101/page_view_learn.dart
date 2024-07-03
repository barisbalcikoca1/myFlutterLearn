import 'package:flutter/material.dart';
import 'package:flutter_learn/101/card_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/text_learn_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController();
  @override
  //PageViewLearn amacı sayfadan sayfaya geçiş için kullanılması sağa sola kaydırarak
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("Page View Learn"),
      ),
      body: PageView(
        controller: _pageController,
        children: const [CardLearn(), ImageLearn(), TextLearnView()],
      ),
    );
  }
}
