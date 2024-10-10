import 'package:first_app/grid/grid_item.dart';
import 'package:flutter/material.dart';
import 'package:first_app/resources/app_colors.dart';
import 'package:first_app/tabs/chart_tabs.dart';
import 'package:first_app/grid/grid_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Voliro',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Voliro Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double horizontalPadding = 10;
  final double verticalPadding = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.contentColorBlack,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(
                  right: horizontalPadding + 10,
                  left: horizontalPadding,
                  top: verticalPadding,
                  bottom: verticalPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // menu icon
                    IconButton(
                      icon: Image.asset('lib/icons/menu.png', height: 45),
                      onPressed: () => {},
                    ),
                    // logo
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.contentColorWhite,
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'lib/icons/logo.png',
                              height: 20,
                              width: 32,
                            )))
                  ],
                )),
            const Padding(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                child: Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  color: AppColors.dividerColor,
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding + 20,
              ),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: const ChartTabs(),
              ),
            ),
            Container(
              height: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: GridView.count(
                  childAspectRatio: 2,
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: [
                    GridItem(title: 'Flight Time', value: '30 min', icon: 'lib/icons/timer.png'),
                    GridItem(title: 'Battery', value: '89%', icon: 'lib/icons/battery.png'),
                    GridItem(title: 'Max Range', value: '300 m', icon: 'lib/icons/range.png'),
                    GridItem(title: 'Max Altitude', value: '212 m', icon: 'lib/icons/altitude.png'),
                  ],
                )))
          ],
        )));
  }
}
