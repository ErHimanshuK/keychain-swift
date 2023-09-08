// swift-tools-version:5.7.0
import PackageDescription

let package = Package(
    name: "KeychainSwift",
	defaultLocalization: "en",
	platforms: [.iOS(.v12), .macOS(.v11), .watchOS(.v6), .tvOS(.v12)],
    products: [
        .library(
			name: "KeychainSwift",
			type:.dynamic,
			targets: ["KeychainSwift"]
		),
    ],
    dependencies: [
    ],
    targets: [
        .target(
          name: "KeychainSwift",
          dependencies: [],
          path: "Sources",
          exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "KeychainSwiftTests",
            dependencies: ["KeychainSwift"],
            exclude: ["ClearTests.swift"]
        )
    ]
)
