### TODO:
* replace usage of responsive_grid with a simple Wrap

# WIP - To run this project you:
## 1-Web:
* Add file 'web/resources/js/firebase_config.js' with firebase info.
  * PM me
* flutter run -d chrome
* r - for reloading (might cause error when reloading, known issue, needs to be solved)

## 2-Android:
* Add file 'android/app/google-services.json'.
* Works like a usual Flutter app

### Extra:
* When publishing changed the id value on 'main.dart.js?id=xx' in the index.html.
  * Because web is web, and web gona cache, this forces the .js file to be refreshed on the user side.
* Might have to manually add SEO stuff on the index.html file
  * Because web is web, and the index file is mostly empty until the js is loaded, meaning search engines will see nothing.

PS: I hate design x)
