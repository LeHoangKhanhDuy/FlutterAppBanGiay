

class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Vui lòng nhập Email';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Email không hợp lệ';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Vui lòng nhập mật khẩu';
    }

    //Mật khẩu ngắn
    if(value.length < 6){
      return 'Mật khẩu từ 6 ký tự';
    }

    //Viết hoa
    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Mật khẩu có ít nhất 1 ký tự viết hoa';
    }

    //Số
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Mật khẩu có ít nhất 1 số';
    }

    //Ký tự đặc biệt
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Mật khẩu có ít nhất 1 ký tự đặc biệt';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Vui lòng nhập số điện thoại';
    }

    //
    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Số điện thoại không hợp lệ';
    }

    return null;
  }

  

}