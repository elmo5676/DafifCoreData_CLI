/*******************************************************
 * OrtcaCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class OrtcaCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    
    // MARK: - File Handling
    var fileNames: [String] = ["ORTCA.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Ortca(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .ortca)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 20 {
                        let entity = Ortca(context: moc)
                        entity.ortcaIdent = property[0]
                        entity.alt = property[1].toDecimal
                        entity.nwLat = property[2]
                        entity.nwDlat = property[3].toDecimal
                        entity.nwLong = property[4]
                        entity.nwDlong = property[5].toDecimal
                        entity.neLat = property[6]
                        entity.neDlat = property[7].toDecimal
                        entity.neLong = property[8]
                        entity.neDlong = property[9].toDecimal
                        entity.swLat = property[10]
                        entity.swDlat = property[11].toDecimal
                        entity.swLong = property[12]
                        entity.swDlong = property[13].toDecimal
                        entity.seLat = property[14]
                        entity.seDlat = property[15].toDecimal
                        entity.seLong = property[16]
                        entity.seDlong = property[17].toDecimal
                        entity.cycleDate = property[18]
                        entity.ortcaId = property[19]
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
