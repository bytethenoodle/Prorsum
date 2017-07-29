// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Prorsum",
    targets: [
        Target(name: "Prorsum"),
        Target(name: "Performance", dependencies: ["Prorsum"]),
    ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/CHTTPParser.git", majorVersion: 0, minor: 5),
        .Package(url: "https://github.com/vapor/clibressl.git", majorVersion: 1)
    ]
)
