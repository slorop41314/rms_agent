class AppConstant {
  static const env = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'dev',
  );

  static const baseUrl = String.fromEnvironment(
    'APP_BASE_URL',
    defaultValue: '',
  );

  static const sbUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: '',
  );
  static const sbAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: '',
  );

  static bool get isDev => env == 'dev';
  static bool get isProd => env == 'prod';
}
