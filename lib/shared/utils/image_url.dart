import 'package:medusa_mobile/config/env.dart';

/// Seeded Medusa data points images at `http://localhost:9000`, which a
/// device cannot reach; swap in the configured backend URL.
String formatImageUrl(String? url, {String backendUrl = Env.medusaBackendUrl}) {
  if (url == null || url.isEmpty) return '';
  const seededHost = 'http://localhost:9000';
  if (url.startsWith(seededHost)) {
    return url.replaceFirst(seededHost, backendUrl);
  }
  return url;
}
