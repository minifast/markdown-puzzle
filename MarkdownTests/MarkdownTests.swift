//
//  MarkdownTests.swift
//  MarkdownTests
//
//  Created by minifast on 7/23/16.
//  Copyright © 2016 minifast. All rights reserved.
//

import XCTest
import Nimble
@testable import Markdown

class MarkdownTests: XCTestCase {
    func test_Markdown_rendersAPlainString() {
        // SETUP: The Markdown-formatted string under test
        let markdownString =  "2004 called. They'd like more Markdown."

        // TEST: Render the Markdown-formatted string
        let rendered = Markdown(string: markdownString).render()

        // VERIFY: The expected NSAttributedString output
        expect(rendered.string) == "2004 called. They'd like more Markdown."
    }
}
