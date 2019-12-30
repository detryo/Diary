//
//  Date+Extension.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation


// Return a formatted string for the date
extension Date {
    func dateOfTheDay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        return dateFormatter.string(from: self)
    }
}
