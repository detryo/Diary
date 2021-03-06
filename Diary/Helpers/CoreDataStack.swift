//
//  CoreDataStack.swift
//  Diary
//
//  Created by Cristian Sedano Arenas on 30/12/2019.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    // The CoreData context
    lazy var managedObjectContext: NSManagedObjectContext = {
        let container = self.persistentContainer
        return container.viewContext
    }()
    
    //  The CoreData Context
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Diary")
        container.loadPersistentStores() { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error), \(error.userInfo)")
            }
            
            storeDescription.shouldInferMappingModelAutomatically = true
            storeDescription.shouldMigrateStoreAutomatically = true
        }
        
        return container
    }()
}


// Save the data on disk
extension NSManagedObjectContext {
    func saveChanges() {
        if self.hasChanges {
            do {
                try save()
            } catch {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}
