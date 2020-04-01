//
// ********************** DafifCoreDataStack *********************************
// * Copyright © 4bitCrew, LLC - All Rights Reserved
// * Created on 3/31/20, for DafifCoreData_CLI
// * Matthew Elmore <matt@4bitCrew.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** DafifCoreDataStack *********************************

import SwiftUI
import CoreData

public class DafifCoreDataStack {
    
    private let dafifModel = DafifCoreDataModel().model
    
    public static var shared = DafifCoreDataStack()
    
    lazy var dafifPc: NSPersistentContainer = {
        let container = NSPersistentContainer(name: " ", managedObjectModel: dafifModel)
        container.loadPersistentStores { (storeDescription, error) in
            if let err = error{
                fatalError("❌ Loading of store failed:\(err)")
            }}
        return container
    }()
    
    lazy var dafifMoc: NSManagedObjectContext = {
        return self.dafifPc.viewContext
    }()
    
    public static func dafifSaveContext() {
        if DafifCoreDataStack.shared.dafifMoc.hasChanges {
            do {
                try DafifCoreDataStack.shared.dafifMoc.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }}}
    
    // MARK: - Generic Functions
    public static func getCD<T: NSManagedObject>(entityType: T, named: String, moc: NSManagedObjectContext) -> [T] {
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
    
    public static func deleteCD<T: NSManagedObject>(entityType: T, named: String, moc: NSManagedObjectContext) {
        let batchDelete = NSBatchDeleteRequest(fetchRequest: T.fetchRequest())
        do {
            try moc.execute(batchDelete)
            try moc.save()
            print("All \(named) were succesfully deleted from CoreData")
        } catch {
            print("Nope")
        }}
    
    
}
