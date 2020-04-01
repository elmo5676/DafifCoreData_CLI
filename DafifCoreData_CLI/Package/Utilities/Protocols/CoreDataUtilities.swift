/*******************************************************
* <#here#>
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/

import SwiftUI
import CoreData

protocol CoreDataUtilities: BundleHelper {}

extension CoreDataUtilities {
    
    // MARK: - Generic Functions
    func getCD<T: NSManagedObject>(entityType: T, named: String, moc: NSManagedObjectContext) -> [T] {
        var result: [T] = []
        let fr = NSFetchRequest<T>(entityName: named)
        do {
            result = try moc.fetch(fr)
        } catch {
            print(error)
        }
        print("************** \(named) **********************")
        print(result.count)
        print("**********************************************")
        return result
    }
    
    func deleteCD<T: NSManagedObject>(entityType: T, named: String, moc: NSManagedObjectContext) {
        let batchDelete = NSBatchDeleteRequest(fetchRequest: T.fetchRequest())
        do {
            try moc.execute(batchDelete)
            try moc.save()
            print("All \(named) were succesfully deleted from CoreData")
        } catch {
            print("Nope")
        }}
       
}


