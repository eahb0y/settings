import 'package:flutter/material.dart';

import 'User_Info.dart';

void main() => runApp(MyApp());

class MenuRowData {
  final IconData icon;
  final String text;
  MenuRowData(this.icon, this.text);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List<MenuRowData> menuRow = [
    MenuRowData(Icons.add_box, 'Избранное'),
    MenuRowData(Icons.call, 'Недавные звонки'),
    MenuRowData(Icons.computer, 'Устройство'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(title: const Center(child: Text('Настройки'))),
            body: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Users_Info(),
                  const SizedBox(
                    height: 30,
                  ),
                  _MenuWidget(menuRow: menuRow),
                ],
              ),
            )));
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(
            width: 15,
          ),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right_sharp)
        ],
      ),
    );
  }
}
