import 'package:flutter/material.dart';
import 'package:flutter_http/photoscreen.dart';
import 'package:flutter_http/screen/blog_post.dart';
import 'package:flutter_http/screen/comments_screen.dart';
import 'package:flutter_http/screen/user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserScreen()));
                }),
                child: const Text("All Users")),
            TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CommentScreen()));
                }),
                child: const Text("All Comments")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhotoScreen()));
                }),
                child: const Text("All Photos")),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PostScreen(),
                ),
              ),
              child: const Text('Post'),
            )
          ],
        ),
      ),
    );
  }
}
