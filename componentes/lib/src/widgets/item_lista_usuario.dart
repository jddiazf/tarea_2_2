import 'package:flutter/material.dart';
import 'package:componentes/src/widgets/detalle_contacto.dart';

class ItemListaUsuario extends StatelessWidget {
  const ItemListaUsuario({super.key, required this.user});
  final Map<String, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${user['name']}'),
      subtitle: Text('${user['username']}'),
      leading: CircleAvatar(child: Text('${user['name'][0]}')),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Navegar a la pantalla de detalles del contacto
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ContactoDetalle(user: user),
          ),
        );
      },
    );
  }
}
