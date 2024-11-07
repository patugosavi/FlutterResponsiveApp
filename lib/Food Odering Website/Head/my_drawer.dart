import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Prathamesh Gosavi"),
            accountEmail: Text('patu67@gmail.com'),
            currentAccountPicture: ClipOval(
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.pexels.com/photos/2653362/pexels-photo-2653362.jpeg?auto=compress&cs=tinysrgb&w=800"),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.pexels.com/photos/2387793/pexels-photo-2387793.jpeg"),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Home'),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Favorite'),
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Them'),
            leading: const Icon(Icons.dark_mode),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Message'),
            leading: const Icon(Icons.message),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Review'),
            leading: const Icon(Icons.reviews),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Share'),
            leading: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
