# Tally

简易计数 / 记账小工具，Flutter 编写，纯本地存储。

## 功能
- 添加条目，加减计数，删除
- 顶栏实时显示合计
- 数据存在本机（shared_preferences）

## 出 APK（不需要本地装 Android SDK）
推送到 GitHub 后，Actions 自动跑 `build-apk`：
1. 打开仓库 Actions 页
2. 选 `build-apk` → Run workflow（或直接 push 自动触发）
3. 等约 5–8 分钟，在该次运行底部 Artifacts 下载 `tally-apk`
4. 解压得到 `app-release.apk`，传到手机上安装

> 未配置正式签名，用的是 debug 签名，自己装没问题；
> 要上架或分发给别人再做 keystore，见下方。

## 正式签名（可选）
1. 本地生成 keystore：`keytool -genkey -v -keystore upload.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload`
2. 把 jks 转 base64 存到仓库 Secrets：`KEYSTORE_BASE64`、`KEYSTORE_PASSWORD`、`KEY_ALIAS`、`KEY_PASSWORD`
3. 工作流里解码并在 `android/key.properties` 写出签名配置

## 本地开发（有 Flutter 环境时）
```bash
flutter pub get
flutter run
```
