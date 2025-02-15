// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftUICustomCharts",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "SwiftUICustomCharts", targets: ["SwiftUICustomCharts"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-extensions/swiftui-shapes.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "SwiftUICustomCharts",dependencies: ["Shapes"])
    ]
)
