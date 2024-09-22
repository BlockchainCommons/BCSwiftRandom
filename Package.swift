// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "BCRandom",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "BCRandom",
            targets: ["BCRandom"]),
    ],
    dependencies: [
        .package(url: "https://github.com/WolfMcNally/WolfBase", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "BCRandom"),
        .testTarget(
            name: "BCRandomTests",
            dependencies: [
                "BCRandom",
                "WolfBase"
            ]),
    ]
)
