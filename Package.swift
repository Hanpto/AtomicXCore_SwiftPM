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
        .package(url: "https://github.com/Hanpto/RTCRoomEngine_SwiftPM.git", from: "4.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AtomicXCoreBinary",
            url: "https://ios-sdk-release-1300962221.cos.ap-guangzhou.myqcloud.com/ios/AtomicXCore/4.3.8/AtomicXCore.xcframework.zip",
            checksum: "ebb14e967192572c2ddbb70c4f298762bd191636ede0eb2f439c3c1e0a0a1185"
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
