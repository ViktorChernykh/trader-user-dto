// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "trader-user-dto",
    platforms: [
        .macOS(.v12),
		.iOS(.v13)
    ],
    products: [
        .library(name: "TraderUserDto", targets: ["TraderUserDto"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TraderUserDto", dependencies: []),
    ]
)
