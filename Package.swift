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
            checksum: "f60a5c8f0e1d1329cb7a9b66a8bd95e40181850042f775e3f467eddf668f65ee"
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
