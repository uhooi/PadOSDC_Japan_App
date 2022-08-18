// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "PadOSDC",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "PadOSDC",
            targets: ["AppModule"],
            bundleIdentifier: "hcrane.padosdc.japan.2022",
            teamIdentifier: "R82WJ5W3TV",
            displayVersion: "1.2.1",
            bundleVersion: "7",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .reference
        )
    ],
    dependencies: [
        .package(url: "https://github.com/crane-hiromu/CombineStorable.git", "1.1.0"..<"1.2.0"),
        .package(url: "https://github.com/Losiowaty/PlaygroundTester.git", "0.2.1"..<"1.0.0"),
        .package(url: "https://github.com/noppefoxwolf/SwiftUIWorkaround", "0.0.5"..<"1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "CombineStorable", package: "combinestorable"),
                .product(name: "PlaygroundTester", package: "playgroundtester"),
                .product(name: "SwiftUIWorkaround", package: "swiftuiworkaround")
            ],
            path: ".",
            swiftSettings: [
                .define("TESTING_ENABLED", .when(configuration: .debug))
            ]
        )
    ]
)
