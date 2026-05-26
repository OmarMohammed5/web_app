import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/core/routing/app_router.dart';
import 'package:web_app/core/routing/routes.dart';
import 'package:web_app/core/service/locator.dart';
import 'package:web_app/core/service/navigation_service.dart';
import 'package:web_app/features/home/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:web_app/features/home/ui/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:web_app/features/home/ui/widgets/centered_view.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawerMobile()
            : null,

        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: AppRouter().generateRoute,
                  initialRoute: Routes.homePage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
