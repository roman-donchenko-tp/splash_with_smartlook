# splash_with_smartlook

An example to show a defect with Black screen instead of native splash 
if smartlook is added to pubspec on Android 14

## How to test

## With `flutter_smartlook` in pubspec (BUG)

![with bug](./.video/with_smartlook.gif)

- Run the app on Android 14
- See black screen just after initial splash and until initialization finished

## Without `flutter_smartlook` in pubspec

![without bug](./.video/without_smartlook.gif)

- Remove or comment out `flutter_smartlook: 4.1.20` line in [pubspec.xml]
- Run the app on Android 14
- See a splash screen all the time until initialization finished
