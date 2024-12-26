import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_app/models/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    context.pushNamed(
                      '/profile',
                      extra: User(
                        name: 'Denzel Washington',
                        image:
                            'https://deadline.com/wp-content/uploads/2024/12/denzel-washington.jpg?w=681&h=383&crop=1',
                        role: 'Actor',
                      ),
                    );
                  },
                  color: Colors.purple,
                  child: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20),
                MaterialButton(
                  onPressed: () {
                    context.pushNamed(
                      '/pricing',
                      pathParameters: {'price': '49.99'},
                    );
                  },
                  color: Colors.green,
                  child: const Text(
                    'Pricing',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
