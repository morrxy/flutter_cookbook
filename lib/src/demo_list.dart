import 'opacity_demo.dart' as demo1 show title, makePage;
import 'drawer_demo.dart' as demo2 show title, makePage;

final demoList = [
  {
    'name': demo1.title,
    'makePage': demo1.makePage
  },
  {
    'name': demo2.title,
    'makePage': demo2.makePage
  }
];