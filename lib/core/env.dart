// ignore_for_file: public_member_api_docs

abstract class Env {
  String get tmdbApiScheme;

  String get tmdbApiHost;

  int? get tmdbApiPort;

  String get authPublicKey;

  String get sentryDsn;
}

class EnvImpl implements Env {
  @override
  String get tmdbApiScheme => const String.fromEnvironment('TMDB_API_SCHEME');

  @override
  String get tmdbApiHost => const String.fromEnvironment('TMDB_API_HOST');

  @override
  int? get tmdbApiPort =>
      int.tryParse(const String.fromEnvironment('TMDB_API_PORT'));

  @override
  String get authPublicKey => const String.fromEnvironment('AUTH_PUBLIC_KEY');

  @override
  String get sentryDsn => const String.fromEnvironment('SENTRY_DSN');
}
