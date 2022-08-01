// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "URLEncodedForm",
    products: [
        .library(name: "URLEncodedForm", targets: ["URLEncodedForm"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.40.0"),
        
    ],
    targets: [
        .target(
            name: "URLEncodedForm",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
//                .product(name: "CNIOAtomics", package: "swift-nio"),
            
        ]),
        .testTarget(
            name: "URLEncodedFormTests",
            dependencies: [
                "URLEncodedForm",
        
        ]),
    ]
)
