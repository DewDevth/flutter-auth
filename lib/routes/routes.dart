import 'package:frontend/pages/type_detail.dart';
import 'package:frontend/screens/pages/login_page.dart';
import 'package:frontend/screens/pages/register_page.dart';
import 'package:get/get.dart';
import '../navbar/navbar.dart';
import '../pages/chart.dart';
import '../pages/home.dart';
import '../pages/note.dart';
import '../pages/setting.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(
      name: navbar,
      page: () => const Navbar(),
    ),
    GetPage(
      name: home,
      page: () => Home(),
    ),
    GetPage(
      name: note,
      page: () => const Note(),
    ),
    GetPage(
      name: chart,
      page: () => const Chart(),
    ),
    GetPage(
      name: setting,
      page: () => const Setting(),
    ),
    GetPage(
      name: typeDetail,
      page: () => TypeDetailPage(
        typeId: "",
        typeTitle: "",
      ),
    ),

    //auth
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: register,
      page: () => const RegisterPage(),
    ),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getnote() => note;
  static getsetting() => setting;
  static gettypedetail() => typeDetail;
  //auth
  static getlogin() => login;
  static getregister() => register;

//user
  static String navbar = '/navbar';
  static String home = '/home';
  static String note = '/note';
  static String chart = '/chart';
  static String setting = '/setting';
  static String typeDetail = '/type-detail';

  //auth
  static String login = '/';
  static String register = '/register';
}
