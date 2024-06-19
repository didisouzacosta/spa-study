// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "spm-study",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "spm-study",
            targets: ["spm-study"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/ChartsOrg/Charts.git", from: "5.1.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.1.2")
    ],
    targets: [
        .target(
            name: "spm-study",
            dependencies: []
        ),
        .testTarget(
            name: "spm-studyTests",
            dependencies: ["spm-study"])
    ]
)
