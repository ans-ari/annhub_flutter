## (Important) Initial setup : Add dynamic libraries to your app

### Android

1. Place the script [install.sh] (Linux/Mac) or [install.bat] (Windows) at the root of your project.

2. Execute `sh install.sh` (Linux) / `install.bat` (Windows) at the root of your project to automatically download and place binaries at appropriate folders.

   Note: *The binaries installed will **not** include support for `GpuDelegateV2` and `NnApiDelegate` however `InterpreterOptions().useNnApiForAndroid` can still be used.* 

3. Use **`sh install.sh -d`** (Linux) or **`install.bat -d`** (Windows) instead if you wish to use these `GpuDelegateV2` and `NnApiDelegate`.
4. Place [libtask_text_jni.so] into your arm64-v8a folder
   ![alt text][android_tflite_support_lib_task]

These scripts install pre-built binaries based on latest stable tensorflow release. For info about using other tensorflow versions follow [instructions in wiki]. 

### iOS

1. Download [`TensorFlowLiteC.framework`]. For building a custom version of tensorflow, follow [instructions in wiki]. 
2. Place the `TensorFlowLiteC.framework` in the pub-cache folder of this package.

 Pub-Cache folder location: [(ref)]

 - `~/.pub-cache/hosted/pub.dartlang.org/tflite_flutter-<plugin-version>/ios/` (Linux/ Mac) 
 - `%LOCALAPPDATA%\Pub\Cache\hosted\pub.dartlang.org\tflite_flutter-<plugin-version>\ios\` (Windows)

## Modify your app configuration

### Android
1. Add aaptOptions to your app module build.gradle
   ```
    aaptOptions {
        noCompress "tflite"
    }
   ```
   ![alt text][android_aapt_options]
2. Import the Task Text Library dependency
   ```
   implementation 'org.tensorflow:tensorflow-lite-task-text:0.2.0'
   ```
3. (Optional) Increase your minSdkVersion if it set lower than 21

### iOS

1. Add TFLite Task Text Pod to your Podfile
   ```pod
   pod 'TensorFlowLiteTaskText', '~> 0.2.0'
   ```
2. Add Pod post_install configuration
   ```pod
   target.build_configurations.each do |config|
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'i386 arm64'
    end
   ```
   ![alt text][exclude_arch_fix]


## Package installation

1. Open your pubspec.yaml and add the code below to your dependency

```yaml
dartz: ^0.10.0
annhub_flutter:
   git:
      url: git@github.com:ans-ari/annhub_flutter.git
      ref: main 
      path: packages/annhub_flutter
```
2. Also add these dependencies override to your pubspec
```yaml
dependency_overrides:
  analyzer: ^2.1.0
  meta: ^1.7.0
```

## Package setup

### Use the package as is
1. Add these code to your main.dart import section
   ```dart
   import 'package:annhub_flutter/annhub_flutter.dart' as annhub_flutter;
   ```
2. Replace your main function with the code below
   ```dart
   Future<void> main() async {
      WidgetsFlutterBinding.ensureInitialized();
      configLoading();
      _configureDependencies();
      runApp(const MyApp());
   }

   void _configureDependencies() async {
      annhub_flutter.configureDependencies();
      iris_ui.configureDependencies();
   }
   ```

### Override package env configuration

1. Open your root project pubspec.yaml these dependencies to dependencies section
   ```yaml
   injectable: ^1.5.0
   envify: ^2.0.2
   ```
2. Add the following dependencies to your dev_dependencies
   ```yaml
   build_runner: ^2.1.1
   envify_generator: ^2.0.2
   injectable_generator: ^1.5.0
   ```
3. Create .env and env.dart files
   ```
   BASE_URL = "https://some.baseurl123.com"
   ```
   ```dart
   import 'package:envify/envify.dart';
   import 'package:flutter/foundation.dart';

   part 'env.g.dart';

   const _envDir = 'lib/src/config/env/';

   @Envify(
      path: kReleaseMode ? '$_envDir.env.production' : '$_envDir.env.development')
   abstract class Env {
      static const baseUrl = _Env.baseUrl;
   }
   ```
4. Add these code to your main.dart import section
   ```dart
      import 'package:injectable/injectable.dart';
      import 'package:annhub_flutter/annhub_flutter.dart' as annhub_flutter;
      import 'package:get_it/get_it.dart';
      import 'main.config.dart';
   ```
5. Replace your main function with the code below
   ```dart
   Future<void> main() async {
      WidgetsFlutterBinding.ensureInitialized();
      configLoading();
      _configureDependencies();
      runApp(const MyApp());
   }

   final sl = GetIt.instance;

   @injectableInit
   void configureDependencies() => $initGetIt(GetIt.instance);

   void _configureDependencies() async {
      sl.allowReassignment = true;
      annhub_flutter.configureDependencies();
      configureDependencies();// This function must be called before $initGetIt(sl).
      $initGetIt(sl);// This function must be called last.
   }
   ```
6. Run command in root project terminal
   ```
   flutter pub run build_runner build --delete-conflicting-outputs

   ```
## Package Usage

* **Get iris species prediction**
  
  Use `Future<Either<Failure, String>> RequestIrisUseCase(FloraInfoParams param, bool isCallARI)`.


## Examples

|Title|Code|
|-----|----|
|Iris Prediction App| [Code](examples/iris)


<!-- Links -->
[install.sh]: resources/install.sh
[install.bat]: resources/install.bat
[libtask_text_jni.so]: resources/libtask_text_jni.so
[`TensorFlowLiteC.framework`]: https://github.com/ans-ari/annhub_flutter/releases/download/v0.0.1/TensorFlowLiteC.framework.zip
[(ref)]: https://dart.dev/tools/pub/cmd/pub-get#the-system-package-cache
[instructions in wiki]: https://github.com/am15h/tflite_flutter_plugin/wiki/

<!-- Images -->
[android_aapt_options]: docs/android_aapt_options.png "Android AATP Options"
[android_app_module_build_gradle]: docs/android_app_module_build_gradle.png "Android App Module Build Gradle"
[android_tflite_dependency]: docs/android_tflite_dependency.png "Android Tflite Dependency"
[android_tflite_support_lib_task]: docs/android_tflite_support_lib_task.png "Android Tflite Support Lib Task"
[exclude_arch_fix]: docs/exclude_arch_fix.png "Exclude Arch Fix"
[tflite_pod]: docs/tflite_pod.png "Tflite Pod"