import 'package:flutter/material.dart';

class SelectedAppBar extends AppBar {
  SelectedAppBar({Key? key})
      : super(
          key: key,
          leading: const Icon(
            Icons.close,
          ),
          title: const Text(
            '1 Selected',
          ),
          actions: [
            const Icon(
              Icons.upload_file,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Icon(
                Icons.delete,
              ),
            ),
            const Icon(
              Icons.more_vert,
            )
          ],
        );
}
