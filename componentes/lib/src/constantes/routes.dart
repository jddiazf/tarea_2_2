import '../pages/home_page.dart';
import '../pages/listas_page_constructor.dart';

enum MyRoutes { home, listas, listasConstructor, imagenes, inputs }

final routes = {
  MyRoutes.home.name: (context) => const HomePage(),
  MyRoutes.listasConstructor.name: (context) => const ListasPageConstructor(),
};
