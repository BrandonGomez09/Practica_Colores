

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name){
    case AppRoutes.home:
      return MaterialPageRoute(builder: (_) => const ColorSchemePage());
    case AppRoutes.example:
      return MaterialPageRoute(builder: (_) => const ExamplePage());
    case AppRoutes.test:
      return MaterialPageRoute(builder: (_) => const TestPage());
      default:
        return MaterialPageRoute(buider: (_) => const Scaffol(
  body: Center(
  child: Text('No route defined for ${settings.name}'),
  )
  ));
  }
