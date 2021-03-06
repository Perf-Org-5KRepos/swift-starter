// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "swiftstarter",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.8.1")),
      .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.9.0"),
      .package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", from: "9.1.0"),
      .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.6.4"),
      .package(url: "https://github.com/IBM-Swift/Health.git", from: "1.0.5"),
    ],
    targets: [
      .target(name: "swiftstarter", dependencies: [ .target(name: "Application"), "Kitura" , "HeliumLogger"]),
      .target(name: "Application", dependencies: [ "Kitura", "CloudEnvironment","SwiftMetrics", "Health", 

      ]),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura","HeliumLogger" ])
    ]
)
