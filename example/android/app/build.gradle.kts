plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.affise.attribution.affise_attribution_lib_example"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.affise.attribution.affise_attribution_lib_example"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    val affise_version = "1.6.76"

    // Affise modules
    implementation("com.affise:module-advertising:$affise_version")
    implementation("com.affise:module-androidid:$affise_version")
    implementation("com.affise:module-link:$affise_version")
    implementation("com.affise:module-network:$affise_version")
    implementation("com.affise:module-phone:$affise_version")
    implementation("com.affise:module-status:$affise_version")
    implementation("com.affise:module-subscription:$affise_version")
    implementation("com.affise:module-meta:$affise_version")
    implementation("com.affise:module-appsflyer:$affise_version")
    // implementation("com.affise:module-rustore:$affise_version")
    // implementation("com.affise:module-huawei:$affise_version")
    implementation("com.affise:module-tiktok:$affise_version")
}