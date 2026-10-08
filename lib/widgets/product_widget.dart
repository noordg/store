import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../models/product.dart';
import '../screens/details_screen.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),

      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                product: product,
              ),
            ),
          );
        },

        child: Container(
          height: 120,
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1.5,
            ),
          ),

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),

                child: Container(
                  width: 85,
                  height: 98,

                  decoration: BoxDecoration(
                    color: const Color(0xffF2F5FA),
                    borderRadius: BorderRadius.circular(9),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(7.0),

                    child: Image.asset(
                      product.imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const Gap(8),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        right: 10,
                      ),

                      child: Row(
                        children: [

                          Expanded(
                            child: Text(
                              product.name,

                              maxLines: 1,

                              overflow:
                              TextOverflow.ellipsis,

                              style: const TextStyle(
                                color: Color(0xff111827),
                                fontSize: 14,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ),

                          const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    const Gap(4),

                    Text(
                      'Size ${product.size}',

                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 13,
                      ),
                    ),

                    const Spacer(),

                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                        bottom: 10,
                      ),

                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,

                        children: [

                          Text(
                            '\$ ${product.price}',

                            style: const TextStyle(
                              color: Color(0xff111827),
                              fontSize: 16,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          Container(
                            height: 30,

                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                Colors.grey.shade300,
                              ),

                              borderRadius:
                              BorderRadius.circular(7),
                            ),

                            child: Row(
                              children: [

                                IconButton(
                                  padding:
                                  EdgeInsets.zero,

                                  constraints:
                                  const BoxConstraints(
                                    minWidth: 30,
                                    minHeight: 30,
                                  ),

                                  onPressed: () {},

                                  icon: const Icon(
                                    Icons.remove,
                                    size: 16,
                                  ),
                                ),

                                Text(
                                  '${product.quantity}',

                                  style:
                                  const TextStyle(
                                    fontSize: 13,
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),

                                IconButton(
                                  padding:
                                  EdgeInsets.zero,

                                  constraints:
                                  const BoxConstraints(
                                    minWidth: 30,
                                    minHeight: 30,
                                  ),

                                  onPressed: () {},

                                  icon: const Icon(
                                    Icons.add,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}