// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TableViewKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "TableViewKit", targets: ["TableViewKit"]),
    ],
    dependencies: [
        .package(
              url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "13.2.0")
        ),
    ],
    targets: [
        .target(
            name: "TableViewKit",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "TableViewKitTests",
            dependencies: ["TableViewKit", "Nimble"],
            path: "Tests"),
    ]
)
