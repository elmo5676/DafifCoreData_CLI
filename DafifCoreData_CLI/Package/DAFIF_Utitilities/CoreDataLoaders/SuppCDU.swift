/*******************************************************
 * SuppCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class SuppCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["FUELOIL.TXT", "SVC_RMK.TXT", "ADD_RWY.TXT", "GEN.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Fueloil(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: SvcRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: AddRwy(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: Gen(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .supp)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 7 {
                        let entity = Fueloil(context: moc)
                        entity.arptIdent = property[0]
                        entity.icao = property[1]
                        entity.fuel = property[2]
                        entity.oil = property[3]
                        entity.jasu = property[4]
                        entity.supFluids = property[5]
                        entity.cycleDate = property[6]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 6 {
                        let entity = SvcRmk(context: moc)
                        entity.arptIdent = property[0]
                        entity.type = property[1]
                        entity.rmkSeq = property[2]
                        entity.icao = property[3]
                        entity.remarks = property[4]
                        entity.cycleDate = property[5]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 25 {
                        let entity = AddRwy(context: moc)
                        entity.arptIdent = property[0]
                        entity.highIdent = property[1]
                        entity.loIdent = property[2]
                        entity.icao = property[3]
                        entity.heDtLat = property[4].toDecimal
                        entity.heDtDlat = property[5].toDecimal
                        entity.heDtLong = property[6].toDecimal
                        entity.heDtDlong = property[7].toDecimal
                        entity.heOverrunDis = property[8].toDecimal
                        entity.heSurface = property[9]
                        entity.heOverrunLat = property[10]
                        entity.heOverrunDlat = property[11].toDecimal
                        entity.heOverrunLong = property[12]
                        entity.heOverrunDlong = property[13].toDecimal
                        entity.loDtLat = property[14].toDecimal
                        entity.loDtDlat = property[15].toDecimal
                        entity.loDtLong = property[16].toDecimal
                        entity.loDtDlong = property[17].toDecimal
                        entity.loOverrunDis = property[18].toDecimal
                        entity.loSurface = property[19]
                        entity.loOverrunLat = property[20]
                        entity.loOverrunDlat = property[21]
                        entity.loOverrunLong = property[22]
                        entity.loOverrunDlong = property[23].toDecimal
                        entity.cycleDate = property[24]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 13 {
                        let entity = Gen(context: moc)
                        entity.arptIdent = property[0]
                        entity.icao = property[1]
                        entity.altName = property[2]
                        entity.cityCrossRef = property[3]
                        entity.islGroup = property[4]
                        entity.notam = property[5]
                        entity.oprHrs = property[6]
                        entity.clearStatus = property[7]
                        entity.utmGrid = property[8]
                        entity.time = property[9]
                        entity.daylightSave = property[10]
                        entity.flipPub = property[11]
                        entity.cycleDate = property[12]
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

