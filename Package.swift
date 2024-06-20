// swift-tools-version: 5.10

import PackageDescription

let mainTarget = "spm-study"

let package = Package(
    name: "spm-study",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: mainTarget, targets: [mainTarget]),
        .library(name: "core", targets: [mainTarget]),
        .library(name: "utils", targets: [mainTarget]),
        .library(name: "network", targets: [mainTarget])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/ChartsOrg/Charts.git", from: "5.1.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.1.2")
    ],
    targets: [
        .target(
            name: mainTarget,
            dependencies: [
                "Alamofire",
                "PromiseKit",
                .product(name: "DGCharts", package: "Charts")
            ]
        ),
        .target(name: "core", path: "Sources/core"),
        .target(name: "utils", path: "Sources/utils"),
        .target(name: "network", path: "Sources/network"),
        
        .testTarget(
            name: "spm-studyTests",
            dependencies: ["spm-study"])
    ]
)
