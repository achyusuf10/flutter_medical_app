import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Belum Tersedia',
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
