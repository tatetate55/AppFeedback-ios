// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AppFeedback",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppFeedback",
            targets: ["AppFeedback"]),
    ],
    targets: [
        .target(
            name: "AppFeedback",
            dependencies: [],
            path: "AppFeedback"
            ),
        .testTarget(
            name: "AppFeedbackTests",
            dependencies: ["AppFeedback"],
            path: "AppFeedbackTests"
            ),
    ]
)
