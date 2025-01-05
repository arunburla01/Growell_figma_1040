import 'package:growell_project/router/routes.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  NavigationService._internal();
  factory NavigationService(){
    return  _instance;
  }
  
  Future<dynamic> navigateTo(String routeName) async{
    return AppRouter.router.push(routeName);
  }

  Future<dynamic> navigateWith(String routeName, Object arguments) async{
    return AppRouter.router.pushNamed(routeName,extra: arguments);

  }

  void goBack() {
    return AppRouter.router.pop();
  }

  void replaceWith(String routeName) {
   AppRouter.router.replace(routeName);
  }

}