[//]: # (redundant)
# iOS Integration

The MoguaSDK is compatible with apps supporting iOS 11 or above.

---

## 1. Install the SDK

There are two ways to install the SDK, `CocoaPods` and `Manual Framework`:

### CocoaPods

1. If you haven’t already, install the latest version of [CocoaPods](https://guides.cocoapods.org/using/getting-started.html).

2. If you don’t have an existing [Podfile](https://guides.cocoapods.org/syntax/podfile.html), run the following command to create one:

[//]: # (target="Command Line")
```sh
pod init
```

3. Add this line to your `Podfile`:

[//]: # (language="Ruby", target="Podfile")
```ruby
pod 'MoguaSDK', '~> 0.4.4'
```

4. Run the following command:

[//]: # (target="Command Line")
```sh
pod install
```

5. Don’t forget to use the `.xcworkspace` file to open your project in Xcode, instead of the `.xcodeproj` file, from here on out.

6. In the future, to update to the latest version of the SDK, run:

[//]: # (target="Command Line")
```sh
pod update MoguaSDK
```

### Manual Framework

1. Download the latest version of the [MoguaSDK](https://github.com/OmnimindSG/mogua-ios-sdk/raw/613c19c4517c935a2d3ee7dc33fb2275723bd9ec/Classes/libMoguaSDK.a).

2. Drag `libMoguaSDK.a` to the **Frameworks, Libraries, and Embedded Content** section of the **General** settings in your Xcode project. Make sure to select **Copy items if needed**.

---

## 2. Initialize the SDK

You need to initialize the SDK before any usage.

[//]: # (language="Swift", target="AppDelegate.swift")
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // ...
    // appKey: You can find it on the mogua.io dashboard.
    // allowPasteboardAccess: Whether to allow access to the clipboard. Enabling this feature can enhance accuracy, but may trigger permission warnings.
    MoguaSDK.initWith(appKey: "${appKey}", allowPasteboardAccess: true)
    return true
}
```
[//]: # (language="Objective-C", target="AppDelegate.m")
```objectivec
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // ...
    // appKey: You can find it on the mogua.io dashboard.
    // allowPasteboardAccess: Whether to allow access to the clipboard. Enabling this feature can enhance accuracy, but may trigger permission warnings.
    [MoguaSDK initWithAppKey: @"${appKey}" allowPasteboardAccess: YES];
    return YES;
}
```

[//]: # (Placeholder: Privacy Policy for Clipboard Authorization)

---

## 3. Retrieve the parameters

After initialization, you can asynchronously retrieve the parameters carried during installation (eg. Submit from landing pages).

[//]: # (language="Swift", target="Exsample")
```swift
MoguaSDK.getData(
    onData: { data in
        // data: Parameters passed from the web to the app. If no parameters are provided, an empty Dictionary object is returned.
    },
    onError: { error in
        // error: The exception that occurred.
    }
)
```
[//]: # (language="Objective-C", target="Exsample")
```objectivec
[MoguaSDK getDataOnData:^(NSDictionary<NSString *,id> * _Nonnull data) {
    // data: Parameters passed from the web to the app. If no parameters are provided, an empty dictionary object is returned.
} onError:^(NSError * _Nonnull error) {
    // error: The exception that occurred.
}];
```

> Parameters are cached after passing.
> The `getData` method will always retrieve the same parameters unless the application is reinstalled.