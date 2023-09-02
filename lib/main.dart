import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget {
  final Widget title;

  const myAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(children: <Widget>[
        IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
        ),
        Expanded(child: title),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.search),
        )
      ]),
    );
  }
}

class myScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SafeArea(
            child: myAppBar(
              title: Text(
                'Example title',
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text("Hello World!"),
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'my App',
    home: myScaffold(),
  ));
}
