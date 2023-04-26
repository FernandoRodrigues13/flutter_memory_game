import 'package:flutter/material.dart';
import 'package:flutter_memory_game/constants.dart';
import 'package:flutter_memory_game/pages/recordes_page.dart';
import 'package:flutter_memory_game/theme.dart';

class Recordes extends StatefulWidget {
  const Recordes({Key? key}) : super(key: key);

  @override
  State<Recordes> createState() => _RecordesState();
}

class _RecordesState extends State<Recordes> {
  showRecordes(Modo modo) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => RecordesPage(modo: modo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 3, 48, 41),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Recordes',
                style: TextStyle(
                  color: BrasileiraoTheme.color,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: const Text('Modo NORMAL'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showRecordes(Modo.normal),
            ),
            ListTile(
              title: const Text('Modo BRASILEIRÃO'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showRecordes(Modo.brasileirao),
            )
          ],
        ),
      ),
    );
  }
}
