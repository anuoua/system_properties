# system_properties

flutter plugin for getting system properties easily for android.

## Getting Started

```dart
import 'package:system_properties/system_properties.dart';

Future<String> getSDKVersion() async {
  return await SystemProperties.getSystemProperties("ro.build.version.sdk");
}

getSDKVersion().then((version) {
  print(version);
});
```
