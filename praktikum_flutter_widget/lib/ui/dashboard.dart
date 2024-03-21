import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Commerce'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 600,
                        height: 300,
                        child: Image(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBHk8zoYL1u_SnHJ0-gT_KAEvELnBiZdO9Wkgf78lujb_ddF8U'),
                        ),
                        
                      ),
                    ),
                    ListProducts(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 400,
                        height: 200,
                        child: Image(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3_rLM1l2YWUChxGzTKfUUobcOug_sxvFMfFUwtk3z2a8Ouctw'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductImage(
              key: UniqueKey(),
              rndSeed: 1,
              nama: "1. Foundation SPF 15 #110",
              harga: 310.000,
              imageUrls: const [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_-oJ2PffBydXrwa3lze7ym_HT9x_TiWdiLpJ7H3KINHPxWkF3',
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCaqWxgipJysO3NP0RqppRjPNjOntZRcUPjObCuTxaBBnJX28v',
                'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQF8Df2UPMmZC3lNOtmPHVg4xQNNYTsk3FgWeDuKx2HhRcwrw20',
              ],
            ),
            ProductImage(
              key: UniqueKey(),
              rndSeed: 2,
              nama: "2. Unlimited Blush Original #05",
              harga: 240.000,
              imageUrls: const [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_-oJ2PffBydXrwa3lze7ym_HT9x_TiWdiLpJ7H3KINHPxWkF3',
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCaqWxgipJysO3NP0RqppRjPNjOntZRcUPjObCuTxaBBnJX28v',
                'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQF8Df2UPMmZC3lNOtmPHVg4xQNNYTsk3FgWeDuKx2HhRcwrw20',
              ],
            ),
            ProductImage(
              key: UniqueKey(),
              rndSeed: 3,
              nama: "3. 3D Hydra Lipgloss #19",
              harga: 368.000,
              imageUrls: const [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_-oJ2PffBydXrwa3lze7ym_HT9x_TiWdiLpJ7H3KINHPxWkF3',
                'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSCaqWxgipJysO3NP0RqppRjPNjOntZRcUPjObCuTxaBBnJX28v',
                'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQF8Df2UPMmZC3lNOtmPHVg4xQNNYTsk3FgWeDuKx2HhRcwrw20',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int rndSeed;
  final String nama;
  final double harga;
  final List<String> imageUrls;

  const ProductImage({
    required Key key,
    this.rndSeed = 2,
    this.nama = "Powder",
    this.harga = 125000,
    required this.imageUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrls[rndSeed - 1]), // Memilih tautan gambar sesuai dengan indeks rndSeed
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text("Rp. ${harga.toStringAsFixed(3)}"),
        ],
      ),
    );
  }
}