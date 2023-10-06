# Flutter App Example 📱

Just take it 😃, and build your app 😎.

<table style="width:100%">
  <tr>
    <th><b>1. Home</b></th>
  </tr>
  <tr>
    <td><img src="https://github.com/sergeahs/sergeah/blob/main/public/home_screen.jpg"/></td>
  </tr>
</table>

## Introduction

**MaterialDialog** This Plugin will be useful to create simple, animated, and beautiful dialogs in your next Flutter app.
This library implements Airbnb's [_Lottie_](https://lottiefiles.com/) library to render After Effects animation in app.

## Implementation

Implementation of Material Dialog library is so easy. You can check [/example](/example) directory for demo. Let's have look talk in details about it.

### install

#### i. pubspec

In `pubspec.yaml`

```yaml
dependencies:
  google_nav_bar: _latest_version
```

Now in your Dart code, you can use:

```dart
import 'package:google_nav_bar/google_nav_bar.dart';
```

Details see [pub.dev](https://pub.dev/packages/google_nav_bar).

### Create Dialog

As there are two types of dialogs in library. Material Dialogs are instantiated as follows.
<a name="createMaterialDialog"></a>

#### i. Google Nav Bar

`Dialogs` class will be used to create your dialog, below is an example to show your dialog in the app.

```dart
GNav(
    backgroundColor: Constants.appColor,
    rippleColor: Colors.grey[300]!,
    hoverColor: Colors.grey[100]!,
    gap: 8,
    activeColor: Constants.appColor,
    iconSize: 24,
    haptic: false,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    duration: const Duration(milliseconds: 400),
    tabBackgroundColor: Colors.grey[100]!,
    tabMargin: const EdgeInsets.all(5),
    color: Colors.white,
    tabs: iconList,
    selectedIndex: _selectedIndex,
    onTabChange: (index) {
        setState(() {
        _selectedIndex = index;
        });
    },
    ),
```

## Contribute

Let's develop with collaborations. We would love to have contributions by raising issues and opening PRs. Filing an issue before PR is must.

## License

Project is published under the Apache 2.0 license. Feel free to clone and modify repo as you want, but don't forget to add reference to authors :)
