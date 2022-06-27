import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({Key? key})
      : super(
          key: key,
          leading: const Icon(
            Icons.list,
          ),
          title: const Text(
            'Image Gallery',
          ),
          actions: const [
            Icon(
              Icons.favorite,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Icon(
                Icons.search,
              ),
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
        );
}
