//
//  FacebookClientApp.swift
//  Shared
//
//  Created by chlee on 2020/12/26.
//

import SwiftUI

@main
struct FacebookClientApp: App {
    var body: some Scene {
        WindowGroup {
            Home()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding Textfield Ring ...
extension NSTextField {
    
    open override var focusRingType: NSFocusRingType {
        get {.none}
        set {}
    }
}
