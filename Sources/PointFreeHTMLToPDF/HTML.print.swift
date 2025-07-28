import Foundation
import HtmlToPdf
import PointFreeHTML

extension HTML {
    /// Generates a PDF from HTML content and saves it to the specified URL.
    ///
    /// - Parameters:
    ///   - to: The file URL where the PDF will be saved.
    ///   - encoding: The string encoding to use when converting HTML to string. Defaults to `.utf8`.
    ///   - configuration: The PDF configuration settings including page size and margins. Defaults to `.a4`.
    ///   - createDirectories: Whether to create intermediate directories if they don't exist. Defaults to `true`.
    /// - Throws: An error if the PDF generation fails or the file cannot be written.
    ///
    /// ## Example
    /// ```swift
    /// let html = HTMLDocument {
    ///     h1 { "Hello, World!" }
    ///     p { "This is a PDF generated from HTML." }
    /// }
    ///
    /// let url = URL(fileURLWithPath: "/path/to/output.pdf")
    /// try await html.print(to: url)
    /// ```
    public func print(
        to: URL,
        encoding: String.Encoding = .utf8,
        configuration: PDFConfiguration = .a4,
        createDirectories: Bool = true
    ) async throws {
        try await String(self, encoding: encoding)
            .print(
                to: to,
                configuration: configuration,
                createDirectories: createDirectories
            )
    }
}

extension HTML {
    /// Generates a PDF from HTML content with a custom title and saves it to the specified URL.
    ///
    /// - Parameters:
    ///   - title: The title to use for the PDF document.
    ///   - to: The file URL where the PDF will be saved.
    ///   - encoding: The string encoding to use when converting HTML to string. Defaults to `.utf8`.
    ///   - configuration: The PDF configuration settings including page size and margins. Defaults to `.a4`.
    ///   - createDirectories: Whether to create intermediate directories if they don't exist. Defaults to `true`.
    /// - Throws: An error if the PDF generation fails or the file cannot be written.
    ///
    /// ## Example
    /// ```swift
    /// let html = HTMLDocument {
    ///     h1 { "Hello, World!" }
    ///     p { "This is a PDF generated from HTML." }
    /// }
    ///
    /// let url = URL(fileURLWithPath: "/path/to/invoice.pdf")
    /// try await html.print(title: "Invoice", to: url)
    /// ```
    public func print(
        title: String,
        to: URL,
        encoding: String.Encoding = .utf8,
        configuration: PDFConfiguration = .a4,
        createDirectories: Bool = true
    ) async throws {
        try await String(self, encoding: encoding)
            .print(
                title: title,
                to: to,
                configuration: configuration,
                createDirectories: createDirectories
            )
    }
}

extension HTMLDocumentProtocol {
    /// Generates a PDF from an HTML document and saves it to the specified URL.
    ///
    /// - Parameters:
    ///   - to: The file URL where the PDF will be saved.
    ///   - encoding: The string encoding to use when converting HTML to string. Defaults to `.utf8`.
    ///   - configuration: The PDF configuration settings including page size and margins. Defaults to `.a4`.
    ///   - createDirectories: Whether to create intermediate directories if they don't exist. Defaults to `true`.
    /// - Throws: An error if the PDF generation fails or the file cannot be written.
    ///
    /// ## Example
    /// ```swift
    /// let html = HTMLDocument {
    ///     h1 { "Hello, World!" }
    ///     p { "This is a PDF generated from HTML." }
    /// }
    ///
    /// let url = URL(fileURLWithPath: "/path/to/document.pdf")
    /// try await document.print(to: url)
    /// ```
    public func print(
        to: URL,
        encoding: String.Encoding = .utf8,
        configuration: PDFConfiguration = .a4,
        createDirectories: Bool = true
    ) async throws {
        try await String(self, encoding: encoding)
            .print(
                to: to,
                configuration: configuration,
                createDirectories: createDirectories
            )
    }
}

extension HTMLDocumentProtocol {
    /// Generates a PDF from an HTML document with a custom title and saves it to the specified URL.
    ///
    /// - Parameters:
    ///   - title: The title to use for the PDF document.
    ///   - to: The file URL where the PDF will be saved.
    ///   - encoding: The string encoding to use when converting HTML to string. Defaults to `.utf8`.
    ///   - configuration: The PDF configuration settings including page size and margins. Defaults to `.a4`.
    ///   - createDirectories: Whether to create intermediate directories if they don't exist. Defaults to `true`.
    /// - Throws: An error if the PDF generation fails or the file cannot be written.
    ///
    /// ## Example
    /// ```swift
    /// let html = HTMLDocument {
    ///     h1 { "Hello, World!" }
    ///     p { "This is a PDF generated from HTML." }
    /// }
    ///
    /// let url = URL(fileURLWithPath: "/path/to/report.pdf")
    /// try await document.print(title: "Monthly Report", to: url)
    /// ```
    public func print(
        title: String,
        to: URL,
        encoding: String.Encoding = .utf8,
        configuration: PDFConfiguration = .a4,
        createDirectories: Bool = true
    ) async throws {
        try await String(self, encoding: encoding)
            .print(
                title: title,
                to: to,
                configuration: configuration,
                createDirectories: createDirectories
            )
    }
}
