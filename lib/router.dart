import 'package:go_router/go_router.dart';
import 'package:graphic_sample/pages/p_radar_base.dart';
import 'package:graphic_sample/pages/p_radar_main.dart';

import 'pages/main_home.dart';
import 'pages/p_radar.dart';

final GoRouter goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const MainHomePage()),
    GoRoute(path: '/radar', builder: (context, state) => const RadarPage()),
    GoRoute(
      path: '/radar/main',
      builder: (context, state) => const RadarMainPage(),
    ),
    GoRoute(
      path: '/radar/grid',
      builder: (context, state) => const RadarBasePage(),
    ),
  ],
);
