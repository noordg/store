import 'package:flutter/material.dart';
import 'package:store1/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        title: const Text(
          'Details',

          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),

        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),

        child: Column(
          children: [

            Image.asset(
              product.imagePath,

              width: 368,
              height: 341,

              fit: BoxFit.contain,
            ),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerLeft,

              child: Text(
                product.name,

                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: const [

                Icon(
                  Icons.star,
                  color: Color(0xffFFA928),
                  size: 18,
                ),

                SizedBox(width: 6),

                Text(
                  '4.0/5',

                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration:
                    TextDecoration.underline,
                  ),
                ),

                Text(
                  '  (45 Reviews)',

                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 13),

            Align(
              alignment: Alignment.centerLeft,

              child: Text(
                product.details,

                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),

            const Spacer(),

            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade300,
            ),

            const SizedBox(height: 22),
            Row(
              children: [

                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    const Text(
                      'Price',

                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),

                    Text(
                      '\$ ${product.price}',

                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: GestureDetector(
                    onTap: () {

                      Navigator.pushNamed(
                        context,
                        '/mycart_screen',

                        arguments: product,
                      );
                    },

                    child: Container(
                      width: double.infinity,
                      height: 54,

                      decoration: BoxDecoration(
                        color: const Color(0xff3669C9),

                        borderRadius:
                        BorderRadius.circular(10),
                      ),

                      child: const Center(
                        child: Text(
                          'Add to Cart',

                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight:
                            FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}