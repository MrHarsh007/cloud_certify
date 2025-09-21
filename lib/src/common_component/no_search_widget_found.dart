import 'package:cloud_certify/src/common/constant.dart';
import 'package:cloud_certify/src/utilities/extensions/sized_box_extension.dart';
import 'package:flutter/material.dart';

class NoSearchResultFound extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const NoSearchResultFound({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(SMALL_RADIUS),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 64, color: Colors.grey[400]),
          10.hx,
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          4.hx,
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }
}
