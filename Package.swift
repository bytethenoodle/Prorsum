import PackageDescription

let package = Package(
    name: "Prorsum",
    targets: [
        Target(name: "Prorsum", dependencies: ["CHTTPParser"]),
        Target(name: "Performance", dependencies: ["Prorsum"]),
        Target(name: "CHTTPParser", dependencies: [])
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/clibressl.git", majorVersion: 1)
    ]
)
