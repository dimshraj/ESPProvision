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
        .package(
              name: "Curve25519",
              url: "https://github.com/christophhagen/Curve25519.git",
              from: "2.0.0"
          ),
          .package(
              name: "SwiftProtobuf",
              url: "https://github.com/apple/swift-protobuf.git",
              "1.15.0" ..< "2.0.0"
          ),
    ],

    targets: [
        .target(
       name: "ESPProvision",
       dependencies: ["ESPProvisionObjC"],
       path: "Sources/ESPProvision"),
        .target(
       name: "ESPProvisionObjC",
       dependencies: ["Curve25519", "SwiftProtobuf"],
       path: "Sources/ESPProvisionObjC"),
    ]
)

