//
//  Alert.swift
//  IncetroDeveloperKit
//
//  Created by incetro on 15/02/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit

// MARK: - Alert

public class Alert: AlertBase {
    
    override public var type: UIAlertControllerStyle {
        
        return .alert
    }
    
    /// Add text field
    ///
    /// - Parameter configurationHandler: UITextField config
    /// - Returns: self
    
    public func addTextField(_ configurationHandler: ((UITextField) -> ())? = nil) -> AlertBase {
        
        alert?.addTextField(configurationHandler: configurationHandler)
        
        return self
    }
}
