// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cf_ddns",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/ReactiveX/RxSwift.git", "4.0.0" ..< "5.0.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.8.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "cf_ddns",
            dependencies: ["RxSwift", "HeliumLogger"]),
        .testTarget(
            name: "cf_ddnsTests",
            dependencies: ["cf_ddns"]),
    ]
)
