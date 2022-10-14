cordova build android --release &&
touch app-release.apk && rm app-release.apk &&
zipalign -v 4 platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk app-release.apk &&
/home/mateus/Android/Sdk/build-tools/30.0.3/apksigner sign --ks-key-alias br.gov.pb.cooperar.sol.fornecedor --ks android_fornecedor_pb.keystore app-release.apk &&
/home/mateus/Android/Sdk/build-tools/30.0.3/apksigner verify -v app-release.apk