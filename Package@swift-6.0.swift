// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let pointfreeHtmlToPdf: Self = "PointFreeHtmlToPdf"
}

extension Target.Dependency {
    static var pointfreeHtmlToPdf: Self { .target(name: .pointfreeHtmlToPdf) }
}

extension Target.Dependency {
    static var htmlToPdf: Self { .product(name: "HtmlToPdf", package: "swift-html-to-pdf") }
    static var pointfreeHtml: Self { .product(name: "PointFreeHTML", package: "pointfree-html") }
}

let package = Package(
    name: "pointfree-html-to-pdf",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .watchOS(.v10),
      ],
    products: [
        .library(name: .pointfreeHtmlToPdf, targets: [.pointfreeHtmlToPdf]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/pointfree-html.git", branch: "main"),
        .package(url: "https://github.com/coenttb/swift-html-to-pdf.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .pointfreeHtmlToPdf,
            dependencies: [
                .htmlToPdf,
                .pointfreeHtml
            ]
        ),
        .testTarget(
            name: .pointfreeHtmlToPdf.tests,
            dependencies: [
                .pointfreeHtmlToPdf
            ]
        )
    ],
    swiftLanguageModes: [.v5]
)

extension String {
    var tests: String { self + " Tests" }
}
