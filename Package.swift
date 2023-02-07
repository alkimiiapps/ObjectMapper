// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "ObjectMapper",
                      platforms: [.iOS(.v14), .macOS(.v10_15), .tvOS(.v14)],
                      products: [
                        .library(name: "ObjectMapper",
                                 targets: ["ObjectMapper"])
                      ],
                      dependencies: [
                        .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.0.6"),
                      ],
                      targets: [
                        .target(name: "ObjectMapper",
                                dependencies: [.product(name: "ApolloAPI", package: "apollo-ios")],
                                path: "Sources"),
                        .testTarget(name: "ObjectMapperTests",
                                    dependencies: ["ObjectMapper"],
                                    path: "Tests")
                      ],
                      swiftLanguageVersions: [.v5]
)
