/*******************************************************
 * PjaCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class PjaCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["PJA.TXT", "PJA_PAR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Pja(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: PjaPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .pja)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 30 {
                        let entity = Pja(context: moc)
                        entity.pjaIdent = property[0]
                        entity.segNbr = property[1]
                        entity.name = property[2]
                        entity.icaoRegion = property[3]
                        entity.shap = property[4]
                        entity.derivation = property[5]
                        entity.wgsLat1 = property[6]
                        entity.wgsDlat1 = property[7].toDecimal
                        entity.wgsLong1 = property[8]
                        entity.wgsDlong1 = property[9].toDecimal
                        entity.wgsLat2 = property[10]
                        entity.wgsDlat2 = property[11].toDecimal
                        entity.wgsLong2 = property[12]
                        entity.wgsDlong2 = property[13].toDecimal
                        entity.wgsLat0 = property[14]
                        entity.wgsDlat0 = property[15].toDecimal
                        entity.wgsLong0 = property[16]
                        entity.wgsDlong0 = property[17].toDecimal
                        entity.type = property[18]
                        entity.radius1 = property[19]
                        entity.radius2 = property[20]
                        entity.bearing1 = property[21].toDecimal
                        entity.bearing2 = property[22].toDecimal
                        entity.distance1 = property[23].toDecimal
                        entity.distance2 = property[24].toDecimal
                        entity.navIdent = property[25]
                        entity.navType = property[26]
                        entity.navCtry = property[27]
                        entity.navKeyCd = property[28]
                        entity.cycleDate = property[29]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 9 {
                        let entity = PjaPar(context: moc)
                        entity.pjaIdent = property[0]
                        entity.name = property[1]
                        entity.icaoRegion = property[2]
                        entity.stateProv = property[3]
                        entity.oprTime = property[4]
                        entity.hours = property[5]
                        entity.alt = property[6].toDecimal
                        entity.cycleDate = property[7]
                        entity.effTimes = property[8]
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
