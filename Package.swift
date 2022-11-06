// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "sendgrid",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "SendGrid", targets: ["SendGrid"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/moonfishapp/sendgrid-kit.git", branch: "master"),
    ],
    targets: [
        .target(name: "SendGrid", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "SendGridKit", package: "sendgrid-kit"),
        ]),
        .testTarget(name: "SendGridTests", dependencies: ["SendGrid"])
    ]
)
