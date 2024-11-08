import 'package:flutter/material.dart';

class FooterMenu extends StatelessWidget {
  const FooterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        menuItems("Privacy Policy"),
        menuItems("Contact"),
        menuItems("About"),
        menuItems("Term & Conditions"), 
      ],
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {},
        child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
