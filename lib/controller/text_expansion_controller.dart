import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;

  void toogleExpansion() {
    isExpanded.value = !isExpanded.value;

    print("Text expanded: $isExpanded");
  }
}