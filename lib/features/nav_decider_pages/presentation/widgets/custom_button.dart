import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final PageRouteInfo routeName;

  const CustomButton({required this.label, required this.routeName, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(routeName),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: 400),
        height: 68,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(2, 1),
                    blurRadius: 2,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
