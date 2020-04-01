/*******************************************************
 * PrCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class PrCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["PR.TXT", "PR_PAR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Pr(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: PrPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .pr)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 15 {
                        let entity = Pr(context: moc)
                        entity.prIdent = property[0]
                        entity.segNbr = property[1]
                        entity.ptTy1 = property[2]
                        entity.ptNameId1 = property[3]
                        entity.ptNaTy1 = property[4]
                        entity.ptCtry1 = property[5]
                        entity.ptAtsIcao1 = property[6]
                        entity.ptKeyCd1 = property[7]
                        entity.ptTy2 = property[8]
                        entity.ptNameId2 = property[9]
                        entity.ptNaTy2 = property[10]
                        entity.ptCtry2 = property[11]
                        entity.ptAtsIcao2 = property[12]
                        entity.ptKeyCd2 = property[13]
                        entity.cycleDate = property[14]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 15 {
                        let entity = PrPar(context: moc)
                        entity.prIdent = property[0]
                        entity.icaoRegion = property[1]
                        entity.level = property[2]
                        entity.startName = property[3]
                        entity.destName = property[4]
                        entity.acftType = property[5]
                        entity.acftSpeed = property[6]
                        entity.upperAlt = property[7]
                        entity.lowerAlt = property[8]
                        entity.effeTime1 = property[9]
                        entity.effeTime2 = property[10]
                        entity.effeTime3 = property[11]
                        entity.cycleDate = property[12]
                        entity.strtIcao = property[13]
                        entity.destIcao = property[14]
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
