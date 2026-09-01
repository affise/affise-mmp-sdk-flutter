// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "affise_attribution_lib",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "affise-attribution-lib",
            targets: ["affise_attribution_lib"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/affise/affise-mmp-sdk-ios.git", exact: "1.7.14")
    ],
    targets: [
        .target(
            name: "affise_attribution_lib",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "AffiseInternal", package: "affise-mmp-sdk-ios")
            ],
            path: "Sources/affise_attribution_lib"
        )
    ]
)
