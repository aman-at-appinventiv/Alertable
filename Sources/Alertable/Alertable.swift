//
//  Alertable.swift
//  SPMTest
//
//  Created by Appinventiv on 03/10/19.
//  Copyright © 2019 Appinventiv. All rights reserved.
//

import Foundation
import UIKit

public protocol Alertable { }

extension Alertable where Self: UIViewController {
    
    public func showAlert(withTitle title: String, andMsg msg: String) {
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    public func showActionSheet(withTitle title: String, andMsg msg: String) {
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    public func showCancelAlert(withTitle title: String, andMsg msg: String) {
        let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
}
