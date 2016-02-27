//
//  AppDelegate.swift
//  Diurna
//
//  Created by Nicolas Gaulard-Querol on 15/01/2016.
//  Copyright © 2016 Nicolas Gaulard-Querol. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    weak var window: NSWindow?

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        guard let window = NSApplication.sharedApplication().windows.first else { return }

        window.titleVisibility = .Hidden
        window.titlebarAppearsTransparent = true
        window.movableByWindowBackground = true
        window.styleMask |= NSFullSizeContentViewWindowMask
        window.styleMask |= NSTexturedBackgroundWindowMask
        window.backgroundColor = NSColor.whiteColor()

        window.standardWindowButton(NSWindowButton.CloseButton)?.frame.origin.y -= 3
        window.standardWindowButton(NSWindowButton.ZoomButton)?.frame.origin.y -= 3
        window.standardWindowButton(NSWindowButton.MiniaturizeButton)?.frame.origin.y -= 3
    }

    func applicationWillTerminate(aNotification: NSNotification) { }

    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true
    }
}
