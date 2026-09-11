// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "affise_attribution_module_status",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "affise-attribution-module-status",
            targets: ["affise_attribution_module_status"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/affise/affise-mmp-sdk-ios.git", exact: "1.7.15")
    ],
    targets: [
        .target(
            name: "affise_attribution_module_status",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "AffiseModuleStatus", package: "affise-mmp-sdk-ios")
            ],
            path: "Sources/affise_attribution_module_status"
        )
    ]
)