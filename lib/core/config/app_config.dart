class AppConfig {
  final String appName;
  final String baseUrl;
  final bool enableLogs;
  final bool enableMockApi;

  const AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.enableLogs,
    required this.enableMockApi,
  });
}