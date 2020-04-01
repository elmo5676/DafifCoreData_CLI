/*******************************************************
 * NavCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class NavCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["NAV.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Nav(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .nav)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 32 {
                        let entity = Nav(context: moc)
                        entity.navIdent = property[0]
                        entity.type = property[1]
                        entity.ctry = property[2]
                        entity.navKeyCd = property[3]
                        entity.stateProv = property[4]
                        entity.name = property[5]
                        entity.icao = property[6]
                        entity.wac = property[7]
                        entity.freq = property[8]
                        entity.usageCd = property[9]
                        entity.chan = property[10]
                        entity.rcc = property[11]
                        entity.freqProt = property[12]
                        entity.power = property[13]
                        entity.navRange = property[14]
                        entity.locHdatum = property[15]
                        entity.wgsDatum = property[16]
                        entity.wgsLat = property[17]
                        entity.wgsDlat = property[18].toDecimal
                        entity.wgsLong = property[19]
                        entity.wgsDlong = property[20].toDecimal
                        entity.slavedVar = property[21]
                        entity.magVar = property[22].toDecimal
                        entity.elev = property[23].toDecimal
                        entity.dmeWgsLat = property[24]
                        entity.dmeWgsDlat = property[25].toDecimal
                        entity.dmeWgsLong = property[26]
                        entity.dmeWgsDlong = property[27].toDecimal
                        entity.dmeElev = property[28]
                        entity.arptIcao = property[29]
                        entity.os = property[30]
                        entity.cycleDate = property[31]
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
