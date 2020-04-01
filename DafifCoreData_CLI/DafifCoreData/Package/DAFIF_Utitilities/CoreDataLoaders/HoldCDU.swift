/*******************************************************
 * HoldCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class HoldCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["HOLD.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Hold(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .hold)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 17 {
                        let entity = Hold(context: moc)
                        entity.wptId = property[0]
                        entity.wptCtry = property[1]
                        entity.icao = property[2]
                        entity.dup = property[3]
                        entity.inbCrs = property[4].toDecimal
                        entity.turnDir = property[5]
                        entity.length = property[6].toDecimal
                        entity.time = property[7]
                        entity.altOne = property[8]
                        entity.altTwo = property[9]
                        entity.speed = property[10]
                        entity.trackCd = property[11]
                        entity.navIdent = property[12]
                        entity.navType = property[13]
                        entity.navCtry = property[14]
                        entity.navKeyCd = property[15]
                        entity.cycleDate = property[16]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            default:
                print("Nothing to see here")
            }}
        moc.performAndWait {
            do {
                try moc.save()
            } catch {
                print(error)
            }}
        print("\(#file) :: \(#function) :: complete")
    }
}
