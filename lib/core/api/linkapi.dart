class AppLink {
  //static const String server = 'http://10.0.2.2:8000';
 
  static const String server = '';

  
  static String deviceToken(String token) {
    return "$server/api/blog-api/$token";
  }
}
