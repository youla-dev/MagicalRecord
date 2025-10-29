// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MagicalRecord",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "MagicalRecord", targets: ["MagicalRecord"])
    ],
    targets: [
        .target(
            name: "MagicalRecord",
            path: "MagicalRecord",
            publicHeadersPath: ".",
            sources: ["."],
            cSettings: [
                .headerSearchPath("Categories"),
                .headerSearchPath("Core")
            ]
        )
        // Tests can be wired later if needed
    ]
)