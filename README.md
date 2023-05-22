> :warning: **This is a snapshot repository for peer review, it does not have the complete history of the project.**
>
> The actual project is managed in a private GitLab repository.

# Koru 

Flutter mobile application for [Koru](https://github.com/Yneluki/koru).

## Getting Started


Run build runner (freezed)

```shell
flutter pub run build_runner watch --delete-conflicting-outputs
```

Generate app icon:

```shell
flutter pub run flutter_launcher_icons
```

Run :

```shell
flutter run --debug --dart-define=KORU_BASE_URL=https://backend.koru.url
```

Build APK:

```shell
flutter build apk --split-per-abi --dart-define=KORU_BASE_URL=https://backend.koru.url
```

