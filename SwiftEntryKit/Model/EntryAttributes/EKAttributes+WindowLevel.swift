//
//  EKAttributes+WindowLevel.swift
//  SwiftEntryKit
//
//  Created by Daniel Huri on 4/21/18.
//  Copyright (c) 2018 huri000@gmail.com. All rights reserved.
//

import UIKit

public extension EKAttributes {
    
    /** Describes the window level in which the entry would be displayed */
    public enum WindowLevel {
        
        /** Above the alerts */
        case alerts
        
        /** Above the status bar */
        case statusBar
        
        /** Above the application window */
        case normal
        
        /** Custom level */
        case custom(level: UIWindow.Level)
        
        /** Returns the raw value - the window level itself */
        public var value: UIWindow.Level {
            switch self {
            case .alerts:
                return UIWindow.Level.alert
            case .statusBar:
                return UIWindow.Level.statusBar
            case .normal:
                return UIWindow.Level.normal
            case .custom(level: let level):
                return level
            }
        }
    }
}
