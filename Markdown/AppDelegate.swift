//
//  AppDelegate.swift
//  Markdown
//
//  Created by minifast on 7/23/16.
//  Copyright © 2016 minifast. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSTextViewDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet var textView: NSTextView!
    @IBOutlet var markdownView: NSTextView!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func textDidChange(notification: NSNotification) {
        let length = (markdownView.textStorage!.string as NSString).length
        let range = NSRange(location:0, length: length)
        let renderedText = Markdown(string: textView.string ?? "").render()
        markdownView.textStorage!.replaceCharactersInRange(range, withAttributedString: renderedText)
    }
}