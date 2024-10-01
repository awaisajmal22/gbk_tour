class ApiUrl{
  static const _mainUrl ='https://gbktour.com/api';
  static const register = '$_mainUrl/signup';
  static const login = '$_mainUrl/login';
  static const logout ='$_mainUrl/logout';
  static const sendotp = '$_mainUrl/forgot_password/recovery';
  static const changepassword ='$_mainUrl/forgot_password/reset_password';
  static const province = '$_mainUrl/provinces';
  static const distric ='$_mainUrl/districts?province_id=';
  static const picnicspot ='$_mainUrl/district_nearbyplace?district=';
  static const hotels ='$_mainUrl/district/hotels?district=';
  static const booking ='$_mainUrl/hotel/booking';
}