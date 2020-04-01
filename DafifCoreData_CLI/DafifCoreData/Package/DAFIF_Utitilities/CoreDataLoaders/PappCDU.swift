/*******************************************************
 * PappCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/
import CoreData
import SwiftUI

class PappCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["PAPP.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Papp(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .papp)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 29 {
                        let entity = Papp(context: moc)
                        entity.arptIdent = property[0]
                        entity.appIdent = property[1]
                        entity.faaHostId = property[2]
                        entity.rwId = property[3]
                        entity.opsType = property[4]
                        entity.appInd = property[5]
                        entity.spId = property[6]
                        entity.refPds = property[7]
                        entity.refId = property[8]
                        entity.apd = property[9]
                        entity.ltpLat = property[10]
                        entity.ltpDlat = property[11].toDecimal
                        entity.ltpLong = property[12]
                        entity.ltpDlong = property[13].toDecimal
                        entity.ltpThrsHgt = property[14]
                        entity.fpcpTch = property[15]
                        entity.gpa = property[16]
                        entity.fpapLat = property[17]
                        entity.fpapDlat = property[18]
                        entity.fpapLong = property[19]
                        entity.fpapDlong = property[20]
                        entity.widthThrs = property[21]
                        entity.ofset = property[22]
                        entity.uh = property[23]
                        entity.crc = property[24]
                        entity.ltpOrthHgt = property[25]
                        entity.fpapOrthHgt = property[26]
                        entity.fpapAlHgt = property[27]
                        entity.cycleDate = property[28]
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
