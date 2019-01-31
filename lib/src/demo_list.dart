import 'opacity_demo.dart' as demo1 show title, makePage;
import 'drawer_demo.dart' as demo2 show title, makePage;
// import 'package_fonts.dart' as demo3 show title, makePage;
import 'orientation_demo.dart' as demo4 show title, makePage;
import 'tabs_demo.dart' as demo5 show title, makePage;
import 'form_validation_demo.dart' as demo6 show title, makePage;
import 'text_field_focus_demo.dart' as demo7 show title, makePage;

final demoList = [
  {
    'name': demo1.title,
    'makePage': demo1.makePage
  },
  {
    'name': demo2.title,
    'makePage': demo2.makePage
  },
  {
    'name': demo4.title,
    'makePage': demo4.makePage
  },
  {
    'name': demo5.title,
    'makePage': demo5.makePage
  },
  {
    'name': demo6.title,
    'makePage': demo6.makePage
  },
  {
    'name': demo7.title,
    'makePage': demo7.makePage
  }
];