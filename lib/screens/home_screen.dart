import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 1;
  int selectedBottom = 0;

  final TextEditingController searchController =
  TextEditingController();

  List<Product> products = [
    Product(
      price: 1190,
      imagePath:
      'assets/images/6b3f8893ab73c02711e3ab3f75782fe9115b28b5.png',
      name: 'Regular Fit Slogan',
      details: 'Regular Fit Slogan',
      quantity: 2,
      size: 'L',
    ),

    Product(
      price: 1100,
      imagePath:
      'assets/images/6b3f8893ab73c02711e3ab3f75782fe9115b28b5 (1).png',
      name: 'Regular Fit Slogan',
      details: 'Regular Fit Slogan',
      quantity: 1,
      size: 'M',
    ),

    Product(
      price: 1190,
      imagePath:
      'assets/images/989b1f60f3ccce775cd6272411477542f0419922.jpg',
      name: 'Regular Fit Slogan',
      details: 'Regular Fit Slogan',
      quantity: 2,
      size: 'L',
    ),

    Product(
      price: 1100,
      imagePath:
      'assets/images/989b1f60f3ccce775cd6272411477542f0419922 (1).jpg',
      name: 'Regular Fit Polo',
      details: 'Regular Fit Polo',
      quantity: 1,
      size: 'M',
    ),
  ];

  final List<String> categories = [
    'All',
    'Tshirts',
    'Jeans',
    'Shoes',
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 18,
                      ),
                      child: Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff111827),
                        ),
                      ),
                    ),

                    const SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      child: Row(
                        children: [

                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.circular(11),
                                border: Border.all(
                                  color: const Color(0xffE5E7EB),
                                ),
                              ),
                              child: TextField(
                                controller: searchController,
                                decoration: const InputDecoration(
                                  hintText:
                                  'Search for clothes...',
                                  hintStyle: TextStyle(
                                    color: Color(0xffA1A1AA),
                                    fontSize: 12,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 20,
                                    color: Color(0xff9CA3AF),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding:
                                  EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: const Color(0xff2867E8),
                              borderRadius:
                              BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.tune,
                              color: Colors.white,
                              size: 21,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 13),

                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          bool selected =
                              selectedCategory == index;

                          return Padding(
                            padding: const EdgeInsets.only(
                              right: 7,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCategory = index;
                                });
                              },
                              child: Container(
                                padding:
                                const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: selected
                                      ? const Color(0xff2867E8)
                                      : Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(10),
                                  border: Border.all(
                                    color: selected
                                        ? const Color(0xff2867E8)
                                        : const Color(0xffE5E7EB),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  categories[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:
                                    FontWeight.w600,
                                    color: selected
                                        ? Colors.white
                                        : const Color(
                                      0xff111827,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 14),

                    ListView.builder(
                      shrinkWrap: true,
                      physics:
                      const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 12,
                          ),
                          child: ProductWidget(
                            product: products[index],
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),

            Container(
              height: 67,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Color(0xffEEEEEE),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: [

                  _bottomNavigationItem(
                    icon: Icons.home_outlined,
                    selectedIcon: Icons.home,
                    title: 'Home',
                    index: 0,
                  ),

                  _bottomNavigationItem(
                    icon: Icons.shopping_cart_outlined,
                    selectedIcon: Icons.shopping_cart,
                    title: 'Cart',
                    index: 1,
                  ),

                  _bottomNavigationItem(
                    icon: Icons.person_outline,
                    selectedIcon: Icons.person,
                    title: 'Account',
                    index: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationItem({
    required IconData icon,
    required IconData selectedIcon,
    required String title,
    required int index,
  }) {
    bool selected = selectedBottom == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBottom = index;
        });
      },
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              selected ? selectedIcon : icon,
              size: 21,
              color: selected
                  ? const Color(0xff2867E8)
                  : const Color(0xff9CA3AF),
            ),

            const SizedBox(height: 3),

            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: selected
                    ? FontWeight.w600
                    : FontWeight.w400,
                color: selected
                    ? const Color(0xff2867E8)
                    : const Color(0xff9CA3AF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}