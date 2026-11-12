import 'package:flutter/material.dart';
import 'web_page_panel.dart';

class UiShowcaseScreen extends StatelessWidget {
  const UiShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(title: const Text('UI Showcase')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Flutter Widget Gallery',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          const Text('Common widgets and layout patterns'),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2F7),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                Icon(Icons.widgets, size: 32),
                SizedBox(width: 12),
                Expanded(child: Text('Container, Icon and Expanded')),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Row(
              children: [
                Icon(Icons.space_bar, size: 32),
                SizedBox(width: 12),
                Flexible(
                  child: Text(
                    'Flexible example: shares space without forcing full width.',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Buttons and Card'),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Filled'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Outlined'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Text'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://picsum.photos/800/300',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Text('Image unavailable'),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 150,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2F7),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const Positioned(
                  top: 16,
                  left: 16,
                  child: Text('Stack and Positioned'),
                ),
                const Positioned(
                  bottom: 16,
                  right: 16,
                  child: Icon(Icons.school, size: 42),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          GridView.count(
            crossAxisCount: width > 600 ? 4 : 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.5,
            children: const [
              Card(child: Center(child: Text('Grid 1'))),
              Card(child: Center(child: Text('Grid 2'))),
              Card(child: Center(child: Text('Grid 3'))),
              Card(child: Center(child: Text('Grid 4'))),
            ],
          ),

          const SizedBox(height: 12),

          LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  constraints.maxWidth > 500
                      ? 'Wide layout'
                      : 'Compact layout',
                ),
              );
            },
          ),

          const SizedBox(height: 12),

          const Row(
            children: [
              Expanded(child: Text('Row example')),
              Icon(Icons.arrow_forward),
            ],
          ),

          const SizedBox(height: 12),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Column example'),
              Text('Second item'),
            ],
          ),

          const SizedBox(height: 16),

          const Text(
            'Embedded Web Page',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const SizedBox(
            height: 300,
            child: WebPagePanel(),
          ),
        ],
      ),
    );
  }
}