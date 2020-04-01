/*******************************************************
 * MtrCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class MtrCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["MTR_OSM.TXT", "MTR.TXT", "MTR_OV.TXT", "MTR_RMK.TXT", "MTR_PAR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: MtrOsm(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: Mtr(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: MtrOv(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: MtrRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: MtrPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .mtr)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 8 {
                        let entity = MtrOsm(context: moc)
                        entity.mtrIdent = property[0]
                        entity.segNbr = property[1]
                        entity.seqNbr = property[2]
                        entity.suasMoaId = property[3]
                        entity.cycleDate = property[4]
                        entity.sector = property[5]
                        entity.ptIdent = property[6]
                        entity.nxPoint = property[7]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 28 {
                        let entity = Mtr(context: moc)
                        entity.mtrIdent = property[0]
                        entity.ptIdent = property[1]
                        entity.nxPoint = property[2]
                        entity.icaoRegion = property[3]
                        entity.crsaltDesc = property[4]
                        entity.crsAlt1 = property[5].toDecimal
                        entity.crsAlt2 = property[6].toDecimal
                        entity.enraltDesc = property[7]
                        entity.enrAlt1 = property[8]
                        entity.enrAlt2 = property[9]
                        entity.ptNavFlag = property[10]
                        entity.navIdent = property[11]
                        entity.navType = property[12]
                        entity.navCtry = property[13]
                        entity.navKeyCd = property[14]
                        entity.bearing = property[15].toDecimal
                        entity.distance = property[16].toDecimal
                        entity.mtrWidthL = property[17].toDecimal
                        entity.mtrWidthR = property[18].toDecimal
                        entity.usageCd = property[19]
                        entity.wgsLat = property[20]
                        entity.wgsDlat = property[21].toDecimal
                        entity.wgsLong = property[22]
                        entity.wgsDlong = property[23].toDecimal
                        entity.turnRad = property[24]
                        entity.turnDir = property[25]
                        entity.addInfo = property[26]
                        entity.cycleDate = property[27]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 25 {
                        let entity = MtrOv(context: moc)
                        entity.mtrIdent = property[0]
                        entity.segNbr = property[1]
                        entity.ptIdent = property[2]
                        entity.ptUsage = property[3]
                        entity.ptLat = property[4]
                        entity.ptDlat = property[5].toDecimal
                        entity.ptLong = property[6]
                        entity.ptDlong = property[7].toDecimal
                        entity.ptWdthL = property[8].toDecimal
                        entity.ptWdthR = property[9].toDecimal
                        entity.ptTrnRad = property[10]
                        entity.ptTrnDir = property[11]
                        entity.ptBiSec = property[12]
                        entity.nxPoint = property[13]
                        entity.nxUsage = property[14]
                        entity.nxLat = property[15]
                        entity.nxDlat = property[16].toDecimal
                        entity.nxLong = property[17]
                        entity.nxDlong = property[18].toDecimal
                        entity.nxWdthL = property[19].toDecimal
                        entity.nxWdthR = property[20].toDecimal
                        entity.nxTrnRad = property[21]
                        entity.nxTrnDir = property[22]
                        entity.nxBiSec = property[23].toDecimal
                        entity.cycleDate = property[24]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 4 {
                        let entity = MtrRmk(context: moc)
                        entity.mtrIdent = property[0]
                        entity.rmkSeq = property[1]
                        entity.remarks = property[2]
                        entity.cycleDate = property[3]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 4:
                for property in lineItem {
                    if property.count >= 9 {
                        let entity = MtrPar(context: moc)
                        entity.mtrIdent = property[0]
                        entity.origAct = property[1]
                        entity.schAct = property[2]
                        entity.icaoRegion = property[3]
                        entity.ctry = property[4]
                        entity.locHdatum = property[5]
                        entity.wgsDatum = property[6]
                        entity.effTimes = property[7]
                        entity.cycleDate = property[8]
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

