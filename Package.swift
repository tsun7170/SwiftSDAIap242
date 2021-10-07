// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftSDAIap242",
	platforms: [
		.macOS(.v10_15),
	],
	products: [
		// Products define the executables and libraries a package produces, and make them visible to other packages.
		.library(
			name: "SwiftSDAIap242",
			targets: ["SwiftSDAIap242"]),
	],
	dependencies: [
		// Dependencies declare other packages that this package depends on.
		// .package(url: /* package url */, from: "1.0.0"),
//		.package(name: "SwiftSDAIcore", path: "/Users/home/Dropbox/STEP/STEPcode/SwiftSDAIcore/"),
		.package(url: "https://github.com/tsun7170/SwiftSDAIcore", from: "1.0.0"),
			
	],
	targets: [
		// Targets are the basic building blocks of a package. A target can define a module or a test suite.
		// Targets can depend on other targets in this package, and on products in packages this package depends on.
		.target(
			name: "SwiftSDAIap242",
			dependencies: ["SwiftSDAIcore"]),
		.testTarget(
			name: "SwiftSDAIap242Tests",
			dependencies: ["SwiftSDAIap242"]),
	]
)


