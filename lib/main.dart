import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Guys / Quick Actions',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  QuickActions quickActions = const QuickActions();

  @override
  void initState() {
    super.initState();
    quickActions.initialize((String shortcutType) {
      switch (shortcutType) {
        case 'cart_page':
          return _navigate(
            CartPage(
            title: shortcutType,
          )
        );
        case 'order_page':
          return _navigate(
            OrderPage(
            title: shortcutType,
          )
        );
        case 'notification_page':
          return _navigate(
            NotificationPage(
            title: shortcutType,
          )
        );
        case 'place_order':
          return _navigate(
            PlaceOrder(
            title: shortcutType,
          )
        );
      }
    });

    quickActions.setShortcutItems( 
      < ShortcutItem > [
        const ShortcutItem(
          type: 'cart_page',
          localizedTitle: 'Cart Page',
          icon: 'folder'
        ),
        const ShortcutItem(
          type: 'order_page',
          localizedTitle: 'Order Page',
          icon: 'folder'
        ),
        const ShortcutItem(
          type: 'notification_page',
          localizedTitle: 'Notification Page',
          icon: 'folder'
        ),
        const ShortcutItem(
          type: 'place_order',
          localizedTitle: 'Place Order',
          icon: 'folder'
        ),
      ]
    );
  }

  void _navigate(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: const Center(
        child: Text('Welcome to homepage'),
      ),
    );
  }
}


class CartPage extends StatelessWidget {
  final String title;

  const CartPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  final String title;

  const OrderPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

class PlaceOrder extends StatelessWidget {
  final String title;

  const PlaceOrder({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  final String title;

  const NotificationPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
