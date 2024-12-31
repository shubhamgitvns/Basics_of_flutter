// class Person {
//   String name;
//   String address;
//   String number;
//
//   Person({required this.name, required this.address, required this.number});
//
//   @override
//   String toString() {
//     return 'Person(Name:$name, Number:$number, Address:$address)';
//   }
// }
//
// void main() {
//   Map<String, Person> fruits = {
//     "shubham":
//         Person(name: 'Shubham', address: 'Varanasi', number: '9044687654'),
//     "sachin":
//         Person(name: 'sachin', address: 'chateganj', number: '9044687654'),
//     "champak":
//         Person(name: 'Shubham', address: 'Pandaypur', number: '9044687654'),
//   };
//   fruits.keys.toList().sort();
//   // Using a for loop to print each key-value pair
//   for (var entry in fruits.entries) {
//     print("${entry.key} is ${entry.value}");
//   }
//   // print(fruits["shubham"]);
// }

import 'package:flutter/material.dart';

void main() {
  runApp(ProductFilterApp());
}

class ProductFilterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // Dummy JSON data
  final List<Map<String, dynamic>> products = [
    {'name': 'Laptop', 'price': 800, 'img': 'https://via.placeholder.com/150'},
    {
      'name': 'Headphones',
      'price': 50,
      'img': 'https://via.placeholder.com/150'
    },
    {
      'name': 'Smartphone',
      'price': 600,
      'img': 'https://via.placeholder.com/150'
    },
    {'name': 'Watch', 'price': 150, 'img': 'https://via.placeholder.com/150'},
    {'name': 'Tablet', 'price': 300, 'img': 'https://via.placeholder.com/150'},
  ];

  String filterPrice = 'Low to High'; // Default filter price
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Filtered products based on price
    // final filteredProducts =
    //     products.where((product) => product['price'] <= filterPrice).toList();

    List<Map<String, dynamic>> filterProducts = List.from(products);
    if (filterPrice == 'Low to High') {
      filterProducts.sort((a, b) => a['price'].compareTo(b['price']));
    } else if (filterPrice == 'High to Low') {
      filterProducts.sort((a, b) => b['price'].compareTo(a['price']));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Filter'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Filter Input
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          filterPrice = 'Low to High';
                        });
                      },
                      child: const Text('Low to High'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          filterPrice = 'High to Low';
                        });
                      },
                      child: const Text('High to Low'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Product List
          Expanded(
            child: filterProducts.isEmpty
                ? const Center(
                    child: Text(
                      'No products found below the selected price.',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: filterProducts.length,
                    itemBuilder: (context, index) {
                      final product = filterProducts[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: ListTile(
                          title: Text(product['name']),
                          subtitle: Text('\$${product['price']}'),
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
