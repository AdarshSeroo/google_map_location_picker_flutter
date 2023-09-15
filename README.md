<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# google_map_location_picker_flutter
<p>
  <img src="https://rc.urapp.site/picker_preview.gif" width=300 />
</p>

## Getting Started

- Get an API key at <https://cloud.google.com/maps-platform/>.

- And don't forget to enable the following APIs in <https://console.cloud.google.com/google/maps-apis/>
  - Maps SDK for Android
  - Maps SDK for iOS
  - Places API
  - Geolocation API
  - Geocoding API

- And ensure to enable billing for the project.

### Android

Specify your API key in the application manifest `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...
  <application ...
    <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR KEY HERE"/>
```

### iOS

Specify your API key in the application delegate `ios/Runner/AppDelegate.m`:

```objectivec
#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "GoogleMaps/GoogleMaps.h"
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GMSServices provideAPIKey:@"YOUR KEY HERE"];
  [GeneratedPluginRegistrant registerWithRegistry:self];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
@end
```

Or in your swift code, specify your API key in the application delegate `ios/Runner/AppDelegate.swift`:

```swift
import UIKit
import Flutter
import GoogleMaps
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("YOUR KEY HERE")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

you need also to define `NSLocationWhenInUseUsageDescription`

```
  <key>NSLocationWhenInUseUsageDescription</key>
  <string>This app needs your location to test the location feature of the Google Maps location picker plugin.</string>
```

## Usage



```
      dependencies:
        google_maps_flutter: ^0.5.30
        google_map_location_picker_flutter: ^latest
```


    AddressResult result = await  showGoogleMapLocationPicker(
        pinWidget: Icon(Icons.location_pin,color: Colors.red,size: 55,),
        pinColor: Colors.blue,
        context: context,
        addressPlaceHolder: "حرك الخريطة",
        addressTitle: "عنوان التوصيل",
<!--    polygonPoints: [], -->
        apiKey: "",
        appBarTitle: "حدد موقع التوصيل",
        confirmButtonColor: Colors.blue,
        confirmButtonText: "تأكيد الموقع",
        confirmButtonTextColor: Colors.black,
        country:"sa",
        language:"ar" ,
        searchHint: "ابحث عن موقع", initialLocation: LatLng(26,39),
        outOfBoundsMessage: "الخدمة غير متوفرة حاليا في هذه المنطقة"
    );
    if(result!=null){
     print(result.address)
    }

