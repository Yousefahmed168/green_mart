import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String weight;
  final String image;
  final String tagKey;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.image,
    required this.tagKey,
  });
}

List<ProductModel> offers = [
  ProductModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Banana',
    price: 25,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=',
  ),
  ProductModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Apples',
    price: 20,
    weight: '1 kg',
    image:
        'https://www.shutterstock.com/image-photo/red-apple-cut-half-water-260nw-2532255795.jpg',
  ),
  ProductModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Carrots',
    price: 30,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/1388403435/photo/fresh-carrots-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=XmrTb_nASc7d-4zVKUz0leeTT4fibDzWi_GpIun0Tlc=',
  ),

  ProductModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Oranges',
    price: 50,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/172411313/photo/juicy-orange-refreshment.jpg?s=612x612&w=0&k=20&c=jhM16H0e3neuiyygel3DfSinTPxfbPrMcblMZUFUUjs=',
  ),

  ProductModel(
    id: '5',
    tagKey: UniqueKey().toString(),
    name: 'Mangoes',
    price: 80,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/529964085/photo/mango.jpg?s=612x612&w=0&k=20&c=rmcMZlLOZFdn4NhUcjnaJ3EBHKYZQ4xH4xzpzFU4JgY=',
  ),
  ProductModel(
    id: '6',
    tagKey: UniqueKey().toString(),
    name: 'Strawberries',
    price: 60,
    weight: '1 kg',
    image:
        'https://img.freepik.com/free-photo/closeup-shot-fresh-ripe-strawberries-isolated-white-surface_181624-54939.jpg?semt=ais_hybrid&w=740&q=80',
  ),
  ProductModel(
    id: '7',
    tagKey: UniqueKey().toString(),
    name: 'KIWIS',
    price: 150,
    weight: '1 kg',
    image: 'https://www.theproducemoms.com/wp-content/uploads/2022/01/kiwi.png',
  ),
  ProductModel(
    id: '8',
    tagKey: UniqueKey().toString(),
    name: 'AVOCADOS',
    price: 200,
    weight: '1 kg',
    image: 'https://m.media-amazon.com/images/I/31rzP3bLWNL._AC_.jpg',
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    id: '2',
    tagKey: UniqueKey().toString(),
    name: 'Apples',
    price: 20,
    weight: '1 kg',
    image:
        'https://www.shutterstock.com/image-photo/red-apple-cut-half-water-260nw-2532255795.jpg',
  ),
  ProductModel(
    id: '1',
    tagKey: UniqueKey().toString(),
    name: 'Banana',
    price: 25,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=',
  ),

  ProductModel(
    id: '4',
    tagKey: UniqueKey().toString(),
    name: 'Oranges',
    price: 50,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/172411313/photo/juicy-orange-refreshment.jpg?s=612x612&w=0&k=20&c=jhM16H0e3neuiyygel3DfSinTPxfbPrMcblMZUFUUjs=',
  ),

  ProductModel(
    id: '3',
    tagKey: UniqueKey().toString(),
    name: 'Carrots',
    price: 30,
    weight: '1 kg',
    image:
        'https://media.istockphoto.com/id/1388403435/photo/fresh-carrots-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=XmrTb_nASc7d-4zVKUz0leeTT4fibDzWi_GpIun0Tlc=',
  ),
  ProductModel(
    id: '8',
    tagKey: UniqueKey().toString(),
    name: 'AVOCADOS',
    price: 200,
    weight: '1 kg',
    image: 'https://m.media-amazon.com/images/I/31rzP3bLWNL._AC_.jpg',
  ),
];

class CategoryModel {
  final String id;
  final String name;
  final String image;
  //final String tagKey;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    // required this.tagKey,
  });
}

List<CategoryModel> allProducts = [
  CategoryModel(
    id: '10',
    name: 'oil',
    image:
        'https://cdn.britannica.com/55/157155-050-D07F5610/Containers-olive-oil.jpg',
  ),

  CategoryModel(
    id: '11',
    name: 'Fruits&Vegetable',

    image:
        'https://img.freepik.com/free-photo/colorful-fruits-tasty-fresh-ripe-juicy-white-desk_179666-169.jpg?semt=ais_user_personalization&w=740&q=80',
  ),

  CategoryModel(
    id: '12',
    name: 'Beverages',

    image:
        'https://tandobeverage.com/wp-content/uploads/2021/05/beverage-industry-overview-reports.jpg',
  ),

  CategoryModel(
    id: '13',
    name: 'Bakery & Snacks',
    image:
        'https://img.freepik.com/free-photo/set-bakery-pastries-wooden-table_123827-31226.jpg?semt=ais_user_personalization&w=740&q=80',
  ),

  CategoryModel(
    id: '14',
    name: 'Meat&Fish',
    image:
        'https://img.freepik.com/premium-photo/beef-chicken-meat-fish-shrimps_82893-12085.jpg',
  ),
  CategoryModel(
    id: '15',
    name: 'Dairy & Eggs',
    image:
        'https://img.freepik.com/free-photo/close-up-dairy-products_23-2148610615.jpg?semt=ais_user_personalization&w=740&q=80',
  ),
];
