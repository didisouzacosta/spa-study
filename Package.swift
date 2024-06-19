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
            targets: ["spm-study"]),
    ],
    targets: [
        .target(
            name: "spm-study",
            exclude: ["../../spm-study.podspec", "../../readme.md"]
        ),
        .testTarget(
            name: "spm-studyTests",
            dependencies: ["spm-study"]),
    ]
)
