import 'package:flutter/material.dart';
import 'package:flutter_widget_basic/widget_basic/layout/aspect_ratio.dart';
import 'package:flutter_widget_basic/widget_basic/layout/center.dart';
import 'package:flutter_widget_basic/widget_basic/layout/column.dart';
import 'package:flutter_widget_basic/widget_basic/layout/expanded.dart';
import 'package:flutter_widget_basic/widget_basic/layout/grid_view.dart';
import 'package:flutter_widget_basic/widget_basic/layout/list_view.dart';
import 'package:flutter_widget_basic/widget_basic/layout/row.dart';
import 'package:flutter_widget_basic/widget_basic/layout/stack.dart';
import 'package:flutter_widget_basic/widget_basic/layout/wrap.dart';
import 'package:flutter_widget_basic/widget_basic/widget/button.dart';
import 'package:flutter_widget_basic/widget_basic/widget/circle_avatar.dart';
import 'package:flutter_widget_basic/widget_basic/widget/container.dart';
import 'package:flutter_widget_basic/widget_basic/widget/icon.dart';
import 'package:flutter_widget_basic/widget_basic/widget/image.dart';
import 'package:flutter_widget_basic/widget_basic/widget/scaffold.dart';
import 'package:flutter_widget_basic/widget_basic/widget/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      // Widget
      // home: const ScaffoldWidget(),
      // home: const TextWidget(),
      // home: const ContainerWidget(),
      // home: const ButtonWidget(),
      // home: const IconWidget(),
      // home: const ImageWidget(),
      // home: CircleAvatarWidget(),

      // Layout
      // home: const ColumnWidget(),
      // home: const RowWidget(),
      // home: const CenterWidget(),
      // home: const ExpandedWidget(),
      // home: ListViewWidget(),
      // home: const GridViewWidget(),
      // home: const AspectRatioWidget(),
      // home: const StackWidget(),
      home: WrapWidget(),
    );
  }
}
