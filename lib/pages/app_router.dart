import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/details_page.dart';
import 'package:flutter_application_1/pages/error_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

import '../model/cart_model.dart';

final GoRouter appRouter = GoRouter(
  errorBuilder: (context, state) => const ErrorPage(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),

    GoRoute(
      path: '/details/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        final index = int.tryParse(id);

        if (index == null) {
          return const Scaffold(
            body: Center(child: Text('Invalid item id')),
          );
        }

        final cart = CartModel();

        if (index < 0 || index >= cart.shopItems.length) {
          return const Scaffold(
            body: Center(child: Text('Item not found')),
          );
        }

        final item = cart.shopItems[index];

        return DetailsPage(
          name: item[0] as String,
          imagePath: item[1] as String,
          price: item[2] as String,
          color: item[3] as Color,
        );
      },
    ),
  ],
);
