import 'package:client_flutter/widgets/centered_view/centered_view.dart';
import 'package:client_flutter/widgets/footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:client_flutter/widgets/navigation_bar/navigation_bar.dart';


class LayoutView extends StatelessWidget {
  final child;
  const LayoutView({required Widget this.child});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hi'),),
      drawer: Drawer(
        child: NavigarionBar()
      ),
      body: Column(
        children: [
          CenteredView(child: child)
        ],
        ),
        bottomNavigationBar: Footer(),
    );
  }
}
