// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift.php",
  dependencies: [
  // Dependencies declare other packages that this package depends on.
  // .package(url: /* package url */, from: "1.0.0"),
  .package(url: "https://github.com/apple/swift-syntax.git", .revision("0.50000.0")),
  ],
  targets: [
  // Targets are the basic building blocks of a package. A target can define a module or a test suite.
  // Targets can depend on other targets in this package, and on products in packages which this package depends on.
  .target(
    name: "swift.php",
    dependencies: ["SwiftSyntax"]),
  .testTarget(
    name: "swift.phpTests",
    dependencies: ["swift.php"]),
  ]
)
