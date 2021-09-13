import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/screens/ten/alert_dialog.dart';
import 'package:widget_catalog_flutter/screens/ten/align.dart';
import 'package:widget_catalog_flutter/screens/ten/aspect_ratio.dart';
import 'package:widget_catalog_flutter/screens/ten/baseline.dart';
import 'package:widget_catalog_flutter/screens/ten/bottom_navigation.dart';
import 'package:widget_catalog_flutter/screens/ten/bottom_sheet.dart';
import 'package:widget_catalog_flutter/screens/ten/check_box.dart';
import 'package:widget_catalog_flutter/screens/ten/chip.dart';
import 'package:widget_catalog_flutter/screens/ten/circular_progress.dart';
import 'package:widget_catalog_flutter/screens/ten/clip_oval.dart';
import 'package:widget_catalog_flutter/screens/twenty/clip_path.dart';
import 'package:widget_catalog_flutter/screens/twenty/clip_rect.dart';
import 'package:widget_catalog_flutter/screens/twenty/constrained_box.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_action_sheet.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_activity_indicator.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_alert_dialog.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_button.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_context_menu.dart';
import 'package:widget_catalog_flutter/screens/twenty/cupertino_date_picker.dart';

//widgetB = Scaffold(body: SafeArea(child: Container( child: ,),),);

const kPinkColour = Color(0xFFEB1555);
const kLighterColour = Color(0xFF1D1F33);

const kTextStyle = TextStyle(
    color: Color(0xFFF8F8FF), fontWeight: FontWeight.bold, fontSize: 18.0);

final List<Widget> kWidgetNames = [
  AlertDialogWidget(),
  AlignWidget(),
  AspectRatioWidget(),
  BaselineWidget(),
  BottomNavigationBarWidget(),
  BottomSheetWidget(),
  CheckboxWidget(),
  ChipWidget(),
  CircularProgressIndicatorWidget(),
  ClipOvalWidget(),
  ClipPathWidget(),
  ClipRectWidget(),
  ConstrainedBoxWidget(),
  CupertinoActionSheetWidget(),
  CupertinoActivityIndicatorWidget(),
  CupertinoAlertDialogWidget(),
  CupertinoButtonWidget(),
  CupertinoContextMenuWidget(),
  CupertinoDatePickerWidget(),
  CupertinoDialogActionWidget(),
  // CupertinoFullscreenDialogTransitionWidget(),
  // CupertinoNavigationBarWidget(),
  // CupertinoPageScaffoldWidget(),
  // CupertinoPageTransitionWidget(),
  // CupertinoPickerWidget(),
  // CupertinoScrollbarWidget(),
  // CupertinoSearchTextFieldWidget(),
  // CupertinoSegmentedControlWidget(),
  // CupertinoSliderWidget(),
  // CupertinoSlidingSegmentedControlWidget(),
  // CupertinoSliverNavigationBarWidget(),
  // CupertinoSwitchWidget(),
  // CupertinoTabBarWidget(),
  // CupertinoTabScaffoldWidget(),
  // CupertinoTabViewWidget(),
  // CupertinoTextFieldWidget(),
  // CupertinoTimerPickerWidget(),
  // CustomPaintWidget(),
  // DataTableWidget(),
  // Date & Time PickersWidget(),
  // DecoratedBoxWidget(),
  // DividerWidget(),
  // DrawerWidget(),
  // DropdownButtonWidget(),
  // ElevatedButtonWidget(),
  // ExpansionPanelWidget(),
  // FloatingActionButtonWidget(),
  // GridViewWidget(),
  // IconButtonWidget(),
  // ImageWidget(),
  // LinearProgressIndicatorWidget(),
  // OpacityWidget(),
  // OutlinedButtonWidget(),
  // PopupMenuButtonWidget(),
  // RadioWidget(),
  // RefreshIndicatorWidget(),
  // SimpleDialogWidget(),
  // SliderWidget(),
  // SliverAppBarWidget(),
  // SnackBarWidget(),
  // StackWidget(),
  // StepperWidget(),
  // SwitchWidget(),
  // TabBarWidget(),
  // TextButtonWidget(),
  // TextFieldWidget(),
  // TooltipWidget(),
  // TransformWidget(),
  // WidgetsAppWidget(),
];

const List<String> kWidgetNameList = [
  'AlertDialog',
  'Align',
  'AspectRatio',
  'Baseline',
  'BottomNavigationBar',
  'BottomSheet',
  'Checkbox',
  'Chip',
  'CircularProgressIndicator',
  'ClipOval',
  'ClipPath',
  'ClipRect',
  'ConstrainedBox',
  'CupertinoActionSheet',
  'CupertinoActivityIndicator',
  'CupertinoAlertDialog',
  'CupertinoButton',
  'CupertinoContextMenu',
  'CupertinoDatePicker',
  'CupertinoDialogAction',
  'CupertinoFullscreenDialogTransition',
  'CupertinoNavigationBar',
  'CupertinoPageScaffold',
  'CupertinoPageTransition',
  'CupertinoPicker',
  'CupertinoScrollbar',
  'CupertinoSearchTextField',
  'CupertinoSegmentedControl',
  'CupertinoSlider',
  'CupertinoSlidingSegmentedControl',
  'CupertinoSliverNavigationBar',
  'CupertinoSwitch',
  'CupertinoTabBar',
  'CupertinoTabScaffold',
  'CupertinoTabView',
  'CupertinoTextField',
  'CupertinoTimerPicker',
  'CustomPaint',
  'DataTable',
  'Date & Time Pickers',
  'DecoratedBox',
  'Divider',
  'Drawer',
  'DropdownButton',
  'ElevatedButton',
  'ExpansionPanel',
  'FloatingActionButton',
  'GridView',
  'IconButton',
  'Image',
  'LinearProgressIndicator',
  'Opacity',
  'OutlinedButton',
  'PopupMenuButton',
  'Radio',
  'RefreshIndicator',
  'SimpleDialog',
  'Slider',
  'SliverAppBar',
  'SnackBar',
  'Stack',
  'Stepper',
  'Switch',
  'TabBar',
  'TextButton',
  'TextField',
  'Tooltip',
  'Transform',
  'WidgetsApp',
];
