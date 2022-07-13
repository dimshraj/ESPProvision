// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "ESPProvision",
    products: [
        .library(
            name: "ESPProvision",
            targets: ["ESPProvision"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.1.0"),
        .package(url: "https://github.com/christophhagen/Curve25519.git" , from: "1.5.0"),
    ],

    targets: [
        .target(
       name: "ESPProvision",
       dependencies: ["Curve25519", "swift-protobuf","ESPProvisionObjC"],
       path: "Sources/ESPProvision"),
        .target(
       name: "ESPProvisionObjC",
       path: "Sources/ESPProvisionObjC"),
    ]
)
