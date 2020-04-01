/*******************************************************
 * SuasCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class SuasCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["SUAS_PAR.TXT", "SUAS.TXT", "SUAS_NOTE.TXT", "SUAS_CTRY.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: SuasPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: Suas(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: SuasNote(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: SuasCtry(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .suas)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 18 {
                        let entity = SuasPar(context: moc)
                        entity.suasIdent = property[0]
                        entity.sector = property[1]
                        entity.type = property[2]
                        entity.name = property[3]
                        entity.icao = property[4]
                        entity.conAgcy = property[5]
                        entity.locHdatum = property[6]
                        entity.wgsDatum = property[7]
                        entity.commName = property[8]
                        entity.freq1 = property[9]
                        entity.freq2 = property[10]
                        entity.level = property[11]
                        entity.upperAlt = property[12]
                        entity.lowerAlt = property[13]
                        entity.effTimes = property[14]
                        entity.wx = property[15]
                        entity.cycleDate = property[16]
                        entity.effDate = property[17]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 29 {
                        let entity = Suas(context: moc)
                        entity.suasIdent = property[0]
                        entity.sector = property[1]
                        entity.segNbr = property[2]
                        entity.name = property[3]
                        entity.type = property[4]
                        entity.icao = property[5]
                        entity.shap = property[6]
                        entity.derivation = property[7]
                        entity.wgsLat1 = property[8]
                        entity.wgsDlat1 = property[9].toDecimal
                        entity.wgsLong1 = property[10]
                        entity.wgsDlong1 = property[11].toDecimal
                        entity.wgsLat2 = property[12]
                        entity.wgsDlat2 = property[13].toDecimal
                        entity.wgsLong2 = property[14]
                        entity.wgsDlong2 = property[15].toDecimal
                        entity.wgsLat0 = property[16]
                        entity.wgsDlat0 = property[17].toDecimal
                        entity.wgsLong0 = property[18]
                        entity.wgsDlong0 = property[19].toDecimal
                        entity.radius1 = property[20]
                        entity.radius2 = property[21]
                        entity.bearing1 = property[22].toDecimal
                        entity.bearing2 = property[23].toDecimal
                        entity.navIdent = property[24]
                        entity.navType = property[25]
                        entity.navCtry = property[26]
                        entity.navKeyCd = property[27]
                        entity.cycleDate = property[28]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 6 {
                        let entity = SuasNote(context: moc)
                        entity.suasIdent = property[0]
                        entity.sector = property[1]
                        entity.noteType = property[2]
                        entity.noteNbr = property[3]
                        entity.remarks = property[4]
                        entity.cycleDate = property[5]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 8 {
                        let entity = SuasCtry(context: moc)
                        entity.suasIdent = property[0]
                        entity.sector = property[1]
                        entity.icao = property[2]
                        entity.ctry1 = property[3]
                        entity.ctry2 = property[4]
                        entity.ctry3 = property[5]
                        entity.ctry4 = property[6]
                        entity.cycleDate = property[7]
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
