// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SPM Study",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SPM Study",
            targets: ["SPM Study"]),
    ],
    targets: [
        .target(
            name: "SPM Study"),
        .testTarget(
            name: "SPM StudyTests",
            dependencies: ["SPM Study"]),
    ]
)
