// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AppFeedback",
    products: [
        .library(
            name: "AppFeedback",
            targets: ["AppFeedback"]),
    ],
    targets: [
        .binaryTarget(name: "AppFeedback", path: "./XCFramework/AppFeedback.xcframework")
    ]
)
