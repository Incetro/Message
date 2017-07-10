//
//  AlertProtocol.swift
//  IncetroDeveloperKit
//
//  Created by incetro on 14/02/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit

// MARK: - AlertProtocol

public protocol AlertProtocol {
    
    /// Alert style
    
    var type: UIAlertControllerStyle { get }
    
    /// All text fields in the current alert
    
    var textFields: [UITextField] { get }
}
