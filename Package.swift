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
        .library(name: "spm-core", targets: [mainTarget]),
        .library(name: "spm-utils", targets: [mainTarget]),
        .library(name: "spm-network", targets: [mainTarget])
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
        .target(name: "spm-core", path: "Sources/core"),
        .target(name: "spm-utils", path: "Sources/utils"),
        .target(name: "spm-network", path: "Sources/network"),
        
        .testTarget(name: "spm-studyTests", dependencies: ["spm-study"]),
        .testTarget(name: "spm-coreTests", dependencies: ["spm-core"])
    ]
)
