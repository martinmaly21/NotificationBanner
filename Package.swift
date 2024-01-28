// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "NotificationBannerSwift", targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.0"),
        .package(url: "https://github.com/martinmaly21/MarqueeLabel", .revision("56347f370ef4400e388396e0ee53e3ca2e3882ef"))
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: [.byName(name: "MarqueeLabel"), .byName(name: "SnapKit")],
            path: "NotificationBanner/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
