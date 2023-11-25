import 'package:flutter/material.dart';
import 'package:flutter_table_aplicacion/interfaces/table.dart';

class TableWidget extends StatelessWidget {
  final List<Table> tables;

  const TableWidget({Key? key, required this.tables}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de Información'),
      ),
      body: ListView.builder(
        itemCount: tables.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(tables[index].icono),
            title: Text(tables[index].titulo),
            subtitle: Text(tables[index].descripcion),
            trailing: Text(
                '${tables[index].fechaPublicacion.year}-${tables[index].fechaPublicacion.month}-${tables[index].fechaPublicacion.day}'),
          );
        },
      ),
    );
  }
}
