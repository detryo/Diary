//
//  AlertError.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//


import Foundation
import UIKit


// Allow to display an alertView corresponding to an APIError
class AlertError {
    
    var error: LocationError
    weak var viewController: UIViewController?
    
    init(error: LocationError, on viewController: UIViewController?) {
        self.error = error
        self.viewController = viewController
    }
    
    
    // Display an alertView with a given title and a givent message
    private func alert(withTitle title: String, andMessage message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.viewController?.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(action)
        viewController?.present(alertController, animated: true, completion: nil)
    }
    
    
    // Handle the API errors
    func displayAlert() {
        switch self.error {
        case .unknownError:
            alert(withTitle: "Unknown location error", andMessage: "Please check your device gps connection")
        case .disallowedByUser:
            alert(withTitle: "Location authorization has been disallowed", andMessage: "Please authorize location in your preferences settings")
        case .unableToFindLocation:
            alert(withTitle: "Unable to find location", andMessage: "Please check your device gps connection")
        case .noMatchingAddressFound:
            alert(withTitle: "No matching address found", andMessage: "Sorry, your location has no corresponding address")
        }
    }
}