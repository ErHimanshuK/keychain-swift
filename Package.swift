// swift-tools-version:5.7.0
import PackageDescription

let package = Package(
    name: "KeychainSwift",
	defaultLocalization: "en",
    platforms: [.iOS(.v12), .macOS(.v10_13), .watchOS(.v6), .tvOS(.v12)],
    products: [
        .library(
			name: "KeychainSwift",
			targets: ["KeychainSwift"]
		),
    ],
    dependencies: [
    ],
    targets: [
		.target(
			name: "KeychainBase",
			dependencies: [],
			publicHeadersPath: "Includes"
		),
        .target(
          name: "KeychainSwift",
          dependencies: ["KeychainBase"]
        ),
        .testTarget(
            name: "KeychainSwiftTests",
            dependencies: ["KeychainSwift"],
            exclude: ["ClearTests.swift"]
        )
    ]
)
