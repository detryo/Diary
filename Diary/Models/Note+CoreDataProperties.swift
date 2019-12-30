//
//  Note+CoreDataProperties.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

// The Note Model. Notes are managed by CoreData
extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        // Returns a request that fetches Note objects sorted my modification date
        let request = NSFetchRequest<Note>(entityName: "Note")
        request.sortDescriptors = [NSSortDescriptor(key: "modificationDate", ascending: true)]

        return request
    }
    
    // Returns a request that fetches Note objects sorted my modification date and which contains "text"
    // This request is used by the searchCOntroller
    @nonobjc  class func fetchRequestWithText(_ text: String) -> NSFetchRequest<Note> {
        
        let request = NSFetchRequest<Note>(entityName: "Note")
        
        let predicate  = NSPredicate(format: "text CONTAINS[c] %@", text)
        request.predicate = predicate
        request.sortDescriptors = [NSSortDescriptor(key: "modificationDate", ascending: true)]
        
        return request
    }

    
    @NSManaged public var latitude: Double 
    @NSManaged public var longitude: Double
    @NSManaged public var modificationDate: String
    @NSManaged public var text: String
    @NSManaged public var locationDescription: String
    @NSManaged public var smiley: String
    @NSManaged public var photos: Set<Photo>?

}

