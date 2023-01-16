// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MLKitPackage",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MLKitPackage",
            targets: ["MLKitFaceDetection", "MLImage", "MLKitVision", "Common", "MLKitObjectDetection", "MLKitObjectDetectionCommon", "MLKitVisionKit", "MLKitImageLabelingCommon", "MLKitObjectDetectionCustom"]),
    ],
    dependencies: [
        .package(url: "https://github.com/google/promises.git", from: "2.1.1"),
        .package(url: "https://github.com/google/GoogleDataTransport.git", from: "9.2.0"),
        .package(url: "https://github.com/google/GoogleUtilities.git", from: "7.7.1"),
        .package(url: "https://github.com/google/gtm-session-fetcher.git", from: "1.7.2"),
        .package(url: "https://github.com/firebase/nanopb.git", .upToNextMinor(from: "2.30909.0")),
    ],
    targets: [
        .binaryTarget(name: "MLKitFaceDetection", url: "https://github.com/kiler222/swift-package-mlkit/releases/download/v0.0.1-beta/MLKitFaceDetection.xcframework.zip", checksum: "63b4c5dfb316c708f604afe07ef9dff274de6c125db9444a8b492c6898e0a791"),

        .binaryTarget(name: "MLKitVisionKit", url: "https://github.com/kiler222/swift-package-mlkit/releases/download/v0.0.1-beta/MLKitVisionKit.xcframework.zip", checksum: "4d6be0151f429211472f8cb9df22769f6fd912ed8f9787697c38281a21db507b"),

        .binaryTarget(name: "MLKitCommon", path: "MLKitCommon.xcframework"),
        .binaryTarget(name: "MLImage", path: "MLImage.xcframework"),
        .binaryTarget(name: "MLKitVision", path: "MLKitVision.xcframework"),
        .binaryTarget(name: "MLKitObjectDetection", path: "MLKitObjectDetection.xcframework"),
        .binaryTarget(name: "MLKitObjectDetectionCommon", path: "MLKitObjectDetectionCommon.xcframework"),
        .binaryTarget(name: "MLKitObjectDetectionCustom", path: "MLKitObjectDetectionCustom.xcframework"),
        .binaryTarget(name: "MLKitImageLabelingCommon", path: "MLKitImageLabelingCommon.xcframework"),
        .binaryTarget(name: "GoogleToolboxForMac", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/GoogleToolboxForMac.xcframework.zip", checksum: "6f2e01c3fada4c9a92f45cd83374716026cb5aebf4fed1f74bdd3eba9e9d83bc"),
        .binaryTarget(
            name: "GoogleUtilitiesComponents", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/GoogleUtilitiesComponents.xcframework.zip", checksum: "e9b4e629a140234cee5f4da292219c32f3212fc1fce23c773043e10692abb14d"),
        .binaryTarget(name: "Protobuf", url: "https://github.com/d-date/google-mlkit-swiftpm/releases/download/3.2.0/Protobuf.xcframework.zip", checksum: "e411598ad55b7a74bdec956e67fd7e6b453fcd4267c0f7ccfdfad0952a220cbd"),
        .target(
            name: "Common",
            dependencies: [
                "MLKitCommon",
                "GoogleToolboxForMac",
                "GoogleUtilitiesComponents",
                "Protobuf",
                .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
                .product(name: "GULEnvironment", package: "GoogleUtilities"),
                .product(name: "GULISASwizzler", package: "GoogleUtilities"),
                .product(name: "GULLogger", package: "GoogleUtilities"),
                .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
                .product(name: "GULNSData", package: "GoogleUtilities"),
                .product(name: "GULNetwork", package: "GoogleUtilities"),
                .product(name: "GULReachability", package: "GoogleUtilities"),
                .product(name: "GULUserDefaults", package: "GoogleUtilities"),
                .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
                .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
                .product(name: "nanopb", package: "nanopb"),
                .product(name: "FBLPromises", package: "promises"),
            ]),
    ])
