// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Prorsum",
    products: [
        .executable(name: "prorsum-performance", targets: ["Performance"]),
        .library(name: "Prorsum", targets: ["Prorsum"])
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/CHTTPParser.git", .exact("0.5.1")),
        .package(url: "https://github.com/vapor/clibressl.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "Prorsum", dependencies: ["CHTTPParser", "CLibreSSL"]),
        .target(name: "Performance", dependencies: ["Prorsum"]),
        .testTarget(name: "ProrsumTests", dependencies: ["Prorsum"])
    ]
)
