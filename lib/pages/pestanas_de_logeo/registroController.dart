import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String lastName = lastNameController.text.trim();
    String phone = phoneController.text.trim();
    String password = confirmPasswordController.text.trim();
    String confimrPassword = confirmPasswordController.text.trim();

    print("Email, ${email}");
    print("Password, ${password}");

    if (isValidForm(email, name, lastName, phone, password, confimrPassword)) {
      Get.snackbar("Formulario Valido", "Todo correcto");
    }
  }

  bool isValidForm(String email, String name, String lastName, String phone,
      String password, String confimrPassword) {
    if (!GetUtils.isEmail(email)) {
      Get.snackbar("Formulario no valido", "El correo no es valido");
      return false;
    }
    if (email.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar tu correo");
      return false;
    }
    if (name.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar tu nombre");
      return false;
    }
    if (lastName.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar tu Apellido");
      return false;
    }
    if (phone.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar tu telefono");
      return false;
    }
    if (password.isEmpty) {
      Get.snackbar("Formulario no valido", "Debes ingresar tu contrasena");
      return false;
    }
    if (confimrPassword.isEmpty) {
      Get.snackbar(
          "Formulario no valido", "Debes ingresar correctamente su contrasena");
      return false;
    }
    //Condicion si la contrasena no coincide
    if (password != confimrPassword) {
      Get.snackbar("Formulario no valido", "Las contrasenas no coinciden");
    }
    return true;
  }
}
