import 'package:flutter/material.dart';

class BouquetSelectionScreen extends StatefulWidget {
  const BouquetSelectionScreen({super.key});

  @override
  State<BouquetSelectionScreen> createState() => _BouquetSelectionScreenState();
}

class _BouquetSelectionScreenState extends State<BouquetSelectionScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> bouquets = [
    {
      'image': 'assets/1.jpg',
      'name': 'Buquê 1',
      'description': 'Um arranjo encantador e vibrante.',
    },
    {
      'image': 'assets/2.jpg',
      'name': 'Buquê 2',
      'description': 'Perfeito para presentear.',
    },
    {
      'image': 'assets/3.jpg',
      'name': 'Buquê 3',
      'description': 'Elegância e suavidade.',
    },
    {
      'image': 'assets/4.jpg',
      'name': 'Buquê 4',
      'description': 'Clássico e apaixonante.',
    },
  ];

  void _nextPage() {
    if (_currentIndex < bouquets.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentIndex > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToDetail() {
    Navigator.pushNamed(context, '/detail', arguments: bouquets[_currentIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const Align(alignment: Alignment.centerLeft, child: BackButton()),
              const SizedBox(height: 8),
              const Text(
                "SELECIONE O BUQUÊ DESEJADO:",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: _controller,
                      itemCount: bouquets.length,
                      onPageChanged: (index) =>
                          setState(() => _currentIndex = index),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(bouquets[index]['image']!, height: 250),
                            const SizedBox(height: 12),
                            Text(
                              bouquets[index]['name']!,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        );
                      },
                    ),
                    Positioned(
                      left: 0,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: _prevPage,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: _nextPage,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _goToDetail,
                child: const Text("Mais informações"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
