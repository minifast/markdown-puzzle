//
//  markdown.swift
//  Markdown
//
//  Created by minifast on 7/23/16.
//  Copyright © 2016 minifast. All rights reserved.
//

import Foundation
import Cocoa

class Markdown {
    let string: String

    init(string: String) {
        self.string = string
    }

    func render() -> NSAttributedString {
        return NSAttributedString(string: "")
    }
}
