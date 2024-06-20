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
            targets: [
                "spm-study",
                "spm-core",
                "spm-utils"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/ChartsOrg/Charts.git", from: "5.1.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.1.2"),
        .package(url: "https://github.com/michaeltyson/TPKeyboardAvoiding.git", from: "1.3.5"),
        .package(url: "https://github.com/RedMadRobot/input-mask-ios", from: "7.3.2"),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit", from: "3.7.0")
    ],
    targets: [
        .target(
            name: "spm-study",
            dependencies: [
                "spm-core",
                "spm-utils",
                "spm-network"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(name: "spm-core", dependencies: ["PromiseKit"], path: "Sources/core"),
        .target(name: "spm-utils", dependencies: [.product(name: "DGCharts", package: "Charts")], path: "Sources/utils"),
        .target(name: "spm-network", dependencies: ["Alamofire"], path: "Sources/network"),
        
        .testTarget(name: "spm-studyTests", dependencies: ["spm-study"]),
        .testTarget(name: "spm-coreTests", dependencies: ["spm-core"]),
        .testTarget(name: "spm-networkTests", dependencies: ["spm-network", "spm-core"])
    ]
)
