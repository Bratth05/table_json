import 'package:flutter/material.dart' show IconData, Icons;

class Table {
  String titulo;
  String descripcion;
  IconData icono;
  DateTime fechaPublicacion;

  Table({
    required this.titulo,
    required this.descripcion,
    required this.icono,
    required this.fechaPublicacion,
  });

  factory Table.fromJson(Map<String, dynamic> json) {
    return Table(
      titulo: json["titulo"],
      descripcion: json["descripcion"],
      icono: _getIconData(json["icono"]),
      fechaPublicacion: DateTime.parse(json["fecha_publicacion"]),
    );
  }

  static IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'accessible_forward_sharp':
        return Icons.accessible_forward_sharp;
      case 'ad_units':
        return Icons.ad_units;
      case 'add_a_photo':
        return Icons.add_a_photo;
      default:
        return Icons.error;
    }
  }

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "descripcion": descripcion,
        "icono": _getIconString(icono),
        "fecha_publicacion":
            "${fechaPublicacion.year.toString().padLeft(4, '0')}-${fechaPublicacion.month.toString().padLeft(2, '0')}-${fechaPublicacion.day.toString().padLeft(2, '0')}",
      };

  static String _getIconString(IconData icon) {
    // Convierte IconData a cadena
    return String.fromCharCode(icon.codePoint);
  }
}
