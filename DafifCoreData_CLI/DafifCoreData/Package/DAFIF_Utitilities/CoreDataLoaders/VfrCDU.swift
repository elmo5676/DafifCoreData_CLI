/*******************************************************
 * VfrCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class VfrCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["VFR_RTE.TXT", "VFR_RTE_SEG.TXT", "VFR_RTE_RMK.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: VfrRte(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: VfrRteSeg(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: VfrRteRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .vfr)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 16 {
                        let entity = VfrRte(context: moc)
                        entity.heliIdent = property[0]
                        entity.heliName = property[1]
                        entity.ctry = property[2]
                        entity.stateProv = property[3]
                        entity.icao = property[4]
                        entity.faaHostId = property[5]
                        entity.wgsDatum = property[6]
                        entity.wgsLat = property[7]
                        entity.rpWgsDlat = property[8].toDecimal
                        entity.wgsLong = property[9]
                        entity.rpWgsDlong = property[10].toDecimal
                        entity.elev = property[11].toDecimal
                        entity.magVar = property[12].toDecimal
                        entity.cityCrossRef = property[13]
                        entity.locHdatum = property[14]
                        entity.cycleDate = property[15]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 29 {
                        let entity = VfrRteSeg(context: moc)
                        entity.heliIdent = property[0]
                        entity.rteIdent = property[1]
                        entity.segNbr = property[2]
                        entity.rteName = property[3]
                        entity.ptName = property[4]
                        entity.ptIdentity = property[5]
                        entity.ptWgsLat = property[6]
                        entity.ptWgsDlat = property[7].toDecimal
                        entity.ptWgsLong = property[8]
                        entity.ptWgsDlong = property[9].toDecimal
                        entity.utmGrid = property[10]
                        entity.ptLatOffR = property[11]
                        entity.ptDlatOffR = property[12]
                        entity.ptLongOffR = property[13]
                        entity.ptDlongOffR = property[14]
                        entity.ptLatOffL = property[15]
                        entity.ptDlatOffL = property[16]
                        entity.ptLongOffL = property[17]
                        entity.ptDlongOffL = property[18]
                        entity.ptType = property[19]
                        entity.ptSym = property[20]
                        entity.atHeli = property[21]
                        entity.segName = property[22]
                        entity.magCrs = property[23].toDecimal
                        entity.pathCode = property[24]
                        entity.altDesc = property[25]
                        entity.alt = property[26].toDecimal
                        entity.turnDir = property[27]
                        entity.cycleDate = property[28]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 4 {
                        let entity = VfrRteRmk(context: moc)
                        entity.heliIdent = property[0]
                        entity.rmkSeq = property[1]
                        entity.remarks = property[2]
                        entity.cycleDate = property[3]
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

