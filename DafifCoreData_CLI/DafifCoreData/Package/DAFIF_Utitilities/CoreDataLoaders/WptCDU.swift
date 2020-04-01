/*******************************************************
 * WptCDU.swift
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class WptCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["WPT.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Wpt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .wpt)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 26 {
                        let entity = Wpt(context: moc)
                        entity.wptIdent = property[0]
                        entity.ctry = property[1]
                        entity.stateProv = property[2]
                        entity.wptNavFlag = property[3]
                        entity.type = property[4]
                        entity.desc = property[5]
                        entity.icao = property[6]
                        entity.usageCd = property[7]
                        entity.bearing = property[8].toDecimal
                        entity.distance = property[9].toDecimal
                        entity.wac = property[10]
                        entity.locHdatum = property[11]
                        entity.wgsDatum = property[12]
                        entity.wgsLat = property[13]
                        entity.wgsDlat = property[14].toDecimal
                        entity.wgsLong = property[15]
                        entity.wgsDlong = property[16].toDecimal
                        entity.magVar = property[17].toDecimal
                        entity.navIdent = property[18]
                        entity.navType = property[19]
                        entity.navCtry = property[20]
                        entity.navKeyCd = property[21]
                        entity.cycleDate = property[22]
                        entity.wptRvsm = property[23]
                        entity.rwyId = property[24]
                        entity.rwyIcao = property[25]
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
