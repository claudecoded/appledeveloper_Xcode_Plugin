// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DeveloperPlugin",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "plugin", targets: ["PluginCLI"])
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "PluginCLI",
            dependencies: [],
            path: "Sources/PluginCLI"
        ),
        .testTarget(
            name: "PluginTests",
            dependencies: ["PluginCLI"],
            path: "Tests/PluginTests"
        )
    ]
)
