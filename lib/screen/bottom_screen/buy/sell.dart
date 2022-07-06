import 'package:BikeServicing/repositories/product_repositories.dart';
import 'package:BikeServicing/response/product_category.dart';
import 'package:BikeServicing/screen/product-details_screen.dart';

import 'package:flutter/material.dart';
import '../../../response/get_product_response.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageUrl =
      "https://img.etimg.com/thumb/msid-71939224,width-650,imgsize-482211,,resizemode-4,quality-100/the-amb-001-by-aston-martin.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bikes for'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 82, 99, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<ProductResponse?>(
          future: ProductRepository().getProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data != null) {
                List lstProductCategory = snapshot.data!.data!;

                return ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          lstProductCategory[index]
                              .image!
                              .replaceAll('localhost', '10.0.2.2'),
                        ),
                      ),
                      title: Text(lstProductCategory[index].name!),
                      subtitle: Text(snapshot.data!.data![index].description!),
                      trailing: IconButton(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailScreen(),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text("No data"),
                );
              }
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget displayProducts(ProductCategory productCategory) {
    return Card(
      child: Stack(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              productCategory.image!,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
