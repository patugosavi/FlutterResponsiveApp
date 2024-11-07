import 'package:flutter/material.dart';
import 'package:pizzaapp/Food%20Odering%20Website/Body/product_detail.dart';
import 'package:pizzaapp/Food%20Odering%20Website/Body/send_feedback.dart';
import 'package:pizzaapp/Food%20Odering%20Website/model/product_model.dart';
import 'package:pizzaapp/Food%20Odering%20Website/screen/responsive.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Column(
          children: [
            Responsive(
              mobile: ProductItem(
                crossAxisCount: size.width < 650 ? 2 : 3,
                aspectRatio: size.width < 650 ? 0.85 : 1.1,
              ),
              desktop: ProductItem(
                crossAxisCount: size.width < 650 ? 2 : 3,
                aspectRatio: size.width < 650 ? 0.85 : 1.1,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SendFeedBack(),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    this.crossAxisCount = 3,
    this.aspectRatio = 1.1,
  });

  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: aspectRatio),
      itemBuilder: (context, index) => ProductDetail(
        press: () {},
        product: products[index],
      ),
      itemCount: products.length,
    );
  }
}
