// swift-tools-version:5.10

import PackageDescription

let package = Package(
  
  name: "CodeEditor",

  platforms: [
    .macOS(.v10_15), .iOS(.v13), .visionOS(.v1), .watchOS(.v7), .tvOS(.v12)
  ],

  products: [
    .library(name: "CodeEditor", targets: [ "CodeEditor" ])
  ],
  
  dependencies: [
    // Temporary, until upstream PR is merged.
	//	gr: I don't know what PR this is referring to,
	//		but as of Nov2024, need 2.2.1 of raspu/Highlightr to use highlight.js builds
	//.package(url: "https://github.com/helje5/Highlightr", from: "2.2.1")
    .package(url: "https://github.com/raspu/Highlightr", from: "2.2.1")
  ],
           
  targets: [
    .target(name: "CodeEditor", dependencies: [ "Highlightr" ])
  ]
)
