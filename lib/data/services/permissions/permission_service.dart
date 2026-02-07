// import 'package:get/get.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class PermissionService extends GetxService {
//   static PermissionService get instance => Get.find();
//
//   // Check specific permissions
//   Future<bool> checkPermission(Permission permission) async {
//     final status = await permission.status;
//     return status.isGranted;
//   }
//
//   // Request a single permission
//   Future<bool> requestPermission(Permission permission) async {
//     final status = await permission.request();
//     return status.isGranted;
//   }
//
//   // Request multiple permissions
//   Future<Map<Permission, PermissionStatus>> requestMultiplePermissions(List<Permission> permissions) async {
//     return await permissions.request();
//   }
//
//   // Request Camera Permission
//   Future<bool> requestCameraPermission() async {
//     return await requestPermission(Permission.camera);
//   }
//
//   // Request Microphone Permission
//   Future<bool> requestMicrophonePermission() async {
//     return await requestPermission(Permission.microphone);
//   }
//
//   // Request Location Permission
//   Future<bool> requestLocationPermission() async {
//     return await requestPermission(Permission.locationWhenInUse);
//   }
//
//   // Request Storage Permission
//   Future<bool> requestStoragePermission() async {
//     return await requestPermission(Permission.storage);
//   }
//
//   // Request Notification Permission (for iOS)
//   Future<bool> requestNotificationPermission() async {
//     return await requestPermission(Permission.notification);
//   }
//
//   // Check if Location Service is enabled
//   Future<bool> checkLocationService() async {
//     return await Permission.locationWhenInUse.serviceStatus.isEnabled;
//   }
//
//   // Open app settings if the user permanently denied permission
//   Future<void> openAppSettings() async {
//     await openAppSettings();
//   }
//
//   // Check if all permissions are granted
//   Future<bool> areAllPermissionsGranted(List<Permission> permissions) async {
//     bool allGranted = true;
//     for (var permission in permissions) {
//       if (!await checkPermission(permission)) {
//         allGranted = false;
//         break;
//       }
//     }
//     return allGranted;
//   }
//
//   // Handle permission request and response with result
//   Future<void> handlePermissionRequest(Permission permission) async {
//     final isGranted = await checkPermission(permission);
//     if (!isGranted) {
//       final result = await requestPermission(permission);
//       if (!result) {
//         // Handle denied permission
//         print("Permission denied: ${permission.toString()}");
//         await openAppSettings();
//       } else {
//         print("Permission granted: ${permission.toString()}");
//       }
//     }
//   }
//
//   // Handle multiple permissions request at app startup or for specific feature
//   Future<void> handleMultiplePermissions(List<Permission> permissions) async {
//     final statuses = await requestMultiplePermissions(permissions);
//     statuses.forEach((permission, status) {
//       if (status.isDenied || status.isPermanentlyDenied) {
//         print("Permission denied: $permission");
//       } else {
//         print("Permission granted: $permission");
//       }
//     });
//   }
// }
