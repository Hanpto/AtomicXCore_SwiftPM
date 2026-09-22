// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "AtomicXCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AtomicXCore",
                 targets: ["AtomicXCoreBinary", "AtomicXCoreDeps"])
    ],
    dependencies: [
        .package(url: "https://github.com/Hanpto/RTCRoomEngine_SwiftPM.git", from: "4.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AtomicXCoreBinary",
            url: "https://ios-sdk-release-1300962221.cos.ap-guangzhou.myqcloud.com/ios/AtomicXCore/4.3.0/AtomicXCore.xcframework.zip",
            checksum: "90edc27bdcde5106e43710bd1a702575b0726c7d89276bc117532f0df87ba9e2"
        ),
        .target(
            name: "AtomicXCoreDeps",
            dependencies: [
                .product(name: "RTCRoomEngine", package: "RTCRoomEngine_SwiftPM")
            ],
            path: "Sources/Deps"
        )
    ]
)
