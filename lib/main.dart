import 'package:medusa_mobile/app/view/app.dart';
import 'package:medusa_mobile/bootstrap.dart';

void main() {
  bootstrap((deps) => App(client: deps.client, prefs: deps.prefs));
}
