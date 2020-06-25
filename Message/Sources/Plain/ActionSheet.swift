//
//  ActionSheet.swift
//  IncetroDeveloperKit
//
//  Created by incetro on 15/02/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import UIKit

// MARK: - ActionSheet

public final class ActionSheet: AlertBase {

    override public var type: UIAlertController.Style {
        return .actionSheet
    }
}
