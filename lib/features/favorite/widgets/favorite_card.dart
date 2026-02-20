import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key, required this.model});

  final dynamic model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [Image.network(model.image, height: 70, width: 100)],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    model.name,
                    style: TextStyles.title.copyWith(fontSize: 18),
                  ),
                  Text(
                    model.weight,
                    style: TextStyles.caption1.copyWith(fontSize: 15),
                  ),
                  Text(
                    "\$${model.price}",
                    style: TextStyles.caption1.copyWith(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Spacer(),
              Text(
                "\$${model.price}",
                style: TextStyles.title.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ],
          ),
        ),
        Divider(height: 10),
      ],
    );
  }
}
