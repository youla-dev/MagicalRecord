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
            sources: [
                "Core",
                "Categories"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Core"),
                .headerSearchPath("Categories"),
                .headerSearchPath("Categories/DataImport"),
                .headerSearchPath("Categories/NSManagedObject"),
                .headerSearchPath("Categories/NSManagedObjectContext"),
                .headerSearchPath("include")
            ]
        )
    ]
)
