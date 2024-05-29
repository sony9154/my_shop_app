import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart'; // 導入 GetX 庫

class FormController extends GetxController {
  // 定義一個表單控制器繼承自 GetxController
  final formKey = GlobalKey<FormState>(); // 定義一個全局鍵來識別表單
  final nameController = TextEditingController(); // 定義一個控制器來管理 TextField 的內容

  void submitForm() {
    // 定義一個方法，用來提交表單
    if (formKey.currentState?.validate() ?? false) {
      // 驗證表單是否有效
      Get.snackbar(
        'Form Submitted', // 設置 Snackbar 的標題
        'Name: ${nameController.text}', // 設置 Snackbar 的內容
        snackPosition: SnackPosition.BOTTOM, // 設置 Snackbar 顯示的位置
      );
    }
  }

  @override
  void onClose() {
    // 重寫 onClose 方法
    nameController.dispose(); // 在銷毀控制器之前釋放它
    super.onClose(); // 調用父類的 onClose 方法
  }
}

class FormPage extends StatelessWidget {
  // 定義一個無狀態的 FormPage 小部件
  final FormController controller = Get.put(FormController()); // 使用 Get.put() 創建並注入控制器

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件
      appBar: AppBar(
        // 設置頂部應用欄
        title: Text('Form Page'), // 設置應用欄標題
      ),
      body: Padding(
        // 使用 Padding 小部件來設置內邊距
        padding: const EdgeInsets.all(16.0), // 設置內邊距為16像素
        child: Form(
          // 建立一個表單小部件
          key: controller.formKey, // 設置表單的鍵
          child: Column(
            // 建立一個垂直方向的佈局
            children: <Widget>[
              // 定義 Column 的子部件列表
              TextFormField(
                // 建立一個文本輸入框小部件
                controller: controller.nameController, // 設置控制器
                decoration: InputDecoration(labelText: 'Name'), // 設置輸入框的裝飾，包括標籤文本
                validator: (value) {
                  // 設置輸入框的驗證方法
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name'; // 如果輸入值為空，返回錯誤提示
                  }
                  return null; // 如果輸入有效，返回 null
                },
              ),
              SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為20像素
              ElevatedButton(
                // 建立一個 ElevatedButton 小部件
                onPressed: controller.submitForm, // 設置按鈕按下時呼叫的方法
                child: Text('Submit'), // 設置按鈕上的文字
              ),
            ],
          ),
        ),
      ),
    );
  }
}
