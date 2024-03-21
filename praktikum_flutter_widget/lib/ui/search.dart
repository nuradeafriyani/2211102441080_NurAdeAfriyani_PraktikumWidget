import 'package:flutter/material.dart';

class ProductSearchPage extends StatefulWidget {
  const ProductSearchPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductSearchPageState createState() => _ProductSearchPageState();
}

class _ProductSearchPageState extends State<ProductSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> allProducts = [
    {
      'name': '1. Foundation SPF 15 #110',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_-oJ2PffBydXrwa3lze7ym_HT9x_TiWdiLpJ7H3KINHPxWkF3',
    },
    {
      'name': '2. Unlimited Blush Original #05',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCaqWxgipJysO3NP0RqppRjPNjOntZRcUPjObCuTxaBBnJX28v',
    },
    {
      'name': '3. 3D Hydra Lipgloss #19',
      'image':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQF8Df2UPMmZC3lNOtmPHVg4xQNNYTsk3FgWeDuKx2HhRcwrw20',
    },
    {
      'name': '4. Metal Liquid Lip Colour',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT0mdSbIE2X5lV-EtEqH6QIryxwvu8muNL_ezWwKaVmdeZQvvTA',
    },
    {
      'name': '5. Gossamer Emotion Creamy Lipstick #114',
      'image':
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSZqmYkQV0pi3vDzGVbYM4eZAP-v8yMohZqM2YpkwyMzFJPJaj7',
    },
    {
      'name': '6. Jelly Stylo #506',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrW2PAwh0lfFtlGVINKBpZdcKqDyurZjC2EmAeMOsQFMBEIB3q',
    },
  ];
  List<Map<String, String>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts;
  }

  void _filterProducts(String value) {
    setState(() {
      filteredProducts = allProducts
          .where((product) =>
              product['name']!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pencarian Produk'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Cari Make Up...',
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: _filterProducts,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        filteredProducts[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(filteredProducts[index]['name']!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ProductSearchPage(),
  ));
}
