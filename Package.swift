// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VPNIndicator",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "VPNIndicator",
            dependencies: [],
            path: "Sources/VPNIndicator"
        )
    ]
)