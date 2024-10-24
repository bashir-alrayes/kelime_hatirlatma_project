class AppLink {
  //static const String server = 'http://10.0.2.2:8000';
  final String bearerToken =
      '880a9d63047cdc97b71b5a541ad6e962c196f3d186bcf6331c9c54365590a98a00085831f48fe19a46348299ec0459fc481634ebc09539b2a6fd75f7a15aa265e2bb820fbdb40bd396182dd216f67bd3d40caee486cad7bda64361e8017dda8d2b009d2669f56713d191d461fc898d0bee27e67f4dd9f87845e73ec89b83df47';

  static const String server = 'https://api.alqubba-alkhadra.com';

  static const String transcation = "$server/api/transcation-api";

  static String deviceToken(String token) {
    return "$server/api/blog-api/$token";
  }
}
