//
//  AlertDelegate.swift
//  IncetroDeveloperKit
//
//  Created by incetro on 14/02/2017.
//  Copyright © 2017 Incetro. All rights reserved.
//

import Foundation

// MARK: - AlertDelegate

public protocol AlertDelegate: class {

    /// Runs before showing alert
    ///
    /// - Parameter alert: Alert instance
    func willShow(_ alert: AlertProtocol)

    /// Runs after showing alert
    ///
    /// - Parameter alert: Alert instance
    func didShow(_ alert: AlertProtocol)

    /// Runs before disappearing alert
    ///
    /// - Parameter alert: Alert instance
    func willDisappear(_ alert: AlertProtocol)

    /// Runs after disappearing alert
    ///
    /// - Parameter alert: Alert instance
    func didDisappear(_ alert: AlertProtocol)
}
