//
//  Alert.swift
//  IncetroDeveloperKit
//
//  Created by incetro on 15/02/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit

// MARK: - Alert

public final class Alert: AlertBase {

    override public var type: UIAlertController.Style {
        return .alert
    }

    /// Add text field
    ///
    /// - Parameter configurationHandler: UITextField config
    /// - Returns: self
    public func addTextField(_ configurationHandler: ((UITextField) -> Void)? = nil) -> AlertBase {
        alert?.addTextField(configurationHandler: configurationHandler)
        return self
    }
}
