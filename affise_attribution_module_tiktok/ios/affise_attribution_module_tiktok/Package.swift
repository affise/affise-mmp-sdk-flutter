// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "affise_attribution_module_tiktok",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "affise-attribution-module-tiktok",
            targets: ["affise_attribution_module_tiktok"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/affise/affise-mmp-sdk-ios.git", exact: "1.7.15")
    ],
    targets: [
        .target(
            name: "affise_attribution_module_tiktok",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "AffiseModuleTikTok", package: "affise-mmp-sdk-ios")
            ],
            path: "Sources/affise_attribution_module_tiktok"
        )
    ]
)