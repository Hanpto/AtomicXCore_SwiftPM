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
        .package(url: "https://github.com/Hanpto/RTCRoomEngine_SwiftPM.git", from: "4.3.1")
    ],
    targets: [
        .binaryTarget(
            name: "AtomicXCoreBinary",
            url: "https://ios-sdk-release-1300962221.cos.ap-guangzhou.myqcloud.com/ios/AtomicXCore/4.3.1/AtomicXCore.xcframework.zip",
            checksum: "cd9f6f08e16df62d7d66303efb9f2ba5794baab9e025c2d9ae0b98ddb96c54a6"
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
