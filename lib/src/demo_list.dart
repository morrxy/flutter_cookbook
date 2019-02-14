import 'opacity_demo.dart' as demo1 show title, makePage;
import 'drawer_demo.dart' as demo2 show title, makePage;
// import 'package_fonts.dart' as demo3 show title, makePage;
import 'orientation_demo.dart' as demo4 show title, makePage;
import 'tabs_demo.dart' as demo5 show title, makePage;
import 'form_validation_demo.dart' as demo6 show title, makePage;
import 'text_field_focus_demo.dart' as demo7 show title, makePage;
import 'retrieve_text_input_demo.dart' as demo8 show title, makePage;
import 'retrieve_input_demo.dart' as demo9 show title, makePage;
import 'basic_list_demo.dart' as demo10 show title, makePage;
import 'horizontal_list_demo.dart' as demo11 show title, makePage;
import 'grid_list_demo.dart' as demo12 show title, makePage;
import 'mixed_list_demo.dart' as demo13 show title, makePage;
import 'snackbar_demo.dart' as demo14 show title, makePage;
import 'long_list_demo.dart' as demo15 show title, makePage;
import 'web_images_demo.dart' as demo16 show title, makePage;
import 'fade_in_images_in_memory.dart' as demo17 show title, makePage;
import 'fade_in_images_local.dart' as demo18 show title, makePage;
import 'cached_images_demo.dart' as demo19 show title, makePage;
import 'inkwell_demo.dart' as demo20 show title, makePage;
import 'gesture_demo.dart' as demo21 show title, makePage;
import 'dismissing_items_demo.dart' as demo22 show title, makePage;
import 'navigation_basics_demo.dart' as demo23 show title, makePage;
import 'passing_data_demo.dart' as demo24 show title, makePage;
import 'returning_data_demo.dart' as demo25 show title, makePage;

final List<Map<String, dynamic>> demoList = [
  {
    'name': 'Animation',
    'list': [
      {'name': demo1.title, 'makePage': demo1.makePage},
    ]
  },
  {
    'name': 'Design',
    'list': [
      {'name': demo2.title, 'makePage': demo2.makePage},
      {'name': demo14.title, 'makePage': demo14.makePage},
      {'name': demo4.title, 'makePage': demo4.makePage},
      {'name': demo5.title, 'makePage': demo5.makePage},
    ]
  },
  {
    'name': 'Forms',
    'list': [
      {'name': demo6.title, 'makePage': demo6.makePage},
      {'name': demo7.title, 'makePage': demo7.makePage},
      {'name': demo8.title, 'makePage': demo8.makePage},
      {'name': demo9.title, 'makePage': demo9.makePage},
    ]
  },
  {
    'name': 'Gestures',
    'list': [
      {'name': demo20.title, 'makePage': demo20.makePage},
      {'name': demo21.title, 'makePage': demo21.makePage},
      {'name': demo22.title, 'makePage': demo22.makePage},
    ]
  },
  {
    'name': 'Images',
    'list': [
      {'name': demo16.title, 'makePage': demo16.makePage},
      {'name': demo17.title, 'makePage': demo17.makePage},
      {'name': demo18.title, 'makePage': demo18.makePage},
      {'name': demo19.title, 'makePage': demo19.makePage},
    ]
  },
  {
    'name': 'Lists',
    'list': [
      {'name': demo10.title, 'makePage': demo10.makePage},
      {'name': demo11.title, 'makePage': demo11.makePage},
      {'name': demo12.title, 'makePage': demo12.makePage},
      {'name': demo13.title, 'makePage': demo13.makePage},
      {'name': demo15.title, 'makePage': demo15.makePage},
    ]
  },
  {
    'name': 'Navigation',
    'list': [
      {'name': demo23.title, 'makePage': demo23.makePage},
      {'name': demo24.title, 'makePage': demo24.makePage},
      {'name': demo25.title, 'makePage': demo25.makePage},
    ]
  },
];
