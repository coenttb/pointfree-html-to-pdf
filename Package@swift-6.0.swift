// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

extension String {
    static let pointfreeHTMLToPDF: Self = "PointFreeHTMLToPDF"
}

extension Target.Dependency {
    static var pointfreeHTMLToPDF: Self { .target(name: .pointfreeHTMLToPDF) }
}

extension Target.Dependency {
    static var htmlToPDF: Self { .product(name: "HtmlToPdf", package: "swift-html-to-pdf") }
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
        .library(name: .pointfreeHTMLToPDF, targets: [.pointfreeHTMLToPDF]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/pointfree-html.git", from: "2.0.0"),
        .package(url: "https://github.com/coenttb/swift-html-to-pdf.git", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: .pointfreeHTMLToPDF,
            dependencies: [
                .htmlToPDF,
                .pointfreeHtml
            ]
        ),
        .testTarget(
            name: .pointfreeHTMLToPDF.tests,
            dependencies: [
                .pointfreeHTMLToPDF
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: String { self + " Tests" }
}
