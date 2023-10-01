import 'package:get/get.dart';

class SignInController extends GetxController{
  var isVisible = true.obs;
}

class SignUpController extends GetxController{
  var isVisible = true.obs;
}

class ResetPasswordController extends GetxController{
  var isVisible = true.obs;
  var isVisible2 = true.obs;
}

class FillDetailController extends GetxController{
  var onPageIndex = 0.obs;

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex;

  onIndexChange(index){
    selectedIndex=index;
    update();
  }

  // ignore: prefer_typing_uninitialized_variables
  var selectedIndex2;

  onIndexChange2(index){
    selectedIndex2=index;
    update();
  }

  var none = false.obs;
  var diabetes = false.obs;
  var cholestrol = false.obs;
  var thyroid = false.obs;
  var pocs = false.obs;
  var injury = false.obs;
  var depression = false.obs;


  condition(){
    if (none.isTrue ||
        diabetes.isTrue ||
        cholestrol.isTrue ||
        thyroid.isTrue ||
        pocs.isTrue ||
        injury.isTrue ||
        depression.isTrue
    ) {
      none(false);
      diabetes(false);
      cholestrol(false);
      thyroid(false);
      pocs(false);
      injury(false);
      depression(false);
    }
  }
}