/*******************************************************
 * AtsCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class AtsCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["ATS_RMK.TXT", "ATS_CTRY.TXT", "ATS.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: AtsRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: AtsCtry(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: Ats(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .ats)
            switch i {
            case 0:
                func breakUp(lineItem: [[String]]) {
                    for property in lineItem {
                        if property.count >= 8 {
                            let entity = AtsRmk(context: moc)
                            entity.atsIdent = property[0]
                            entity.seqNbr = property[1]
                            entity.direction = property[2]
                            entity.type = property[3]
                            entity.icao = property[4]
                            entity.rmkSeq = property[5]
                            entity.remark = property[6]
                            entity.cycleDate = property[7]
                        }}
                    moc.performAndWait {
                        do {
                            try moc.save()
                            DispatchQueue.main.async {
                                DafifCoreDataLoader.shared.incrementPercentComplete()
                            }
                        } catch {
                            print(error)
                        }}}
                
                let smaller = lineItem.chunked(into: lineItem.count/10)
                for each in smaller {
                    breakUp(lineItem: each)
                }
                print("\(fileNames[i]) DONE")
            case 1:
                func breakUp(lineItem: [[String]]) {
                    for property in lineItem {
                        if property.count >= 8 {
                            let entity = AtsCtry(context: moc)
                            entity.atsIdent = property[0]
                            entity.seqNbr = property[1]
                            entity.direction = property[2]
                            entity.type = property[3]
                            entity.icao = property[4]
                            entity.ctry = property[5]
                            entity.stateProv = property[6]
                            entity.cycleDate = property[7]
                        }}
                    moc.performAndWait {
                        do {
                            try moc.save()
                            DispatchQueue.main.async {
                                DafifCoreDataLoader.shared.incrementPercentComplete()
                            }
                        } catch {
                            print(error)
                        }}}
                
                let smaller = lineItem.chunked(into: lineItem.count/10)
                for each in smaller {
                    breakUp(lineItem: each)
                }
                print("\(fileNames[i]) DONE")
            case 2:
                func breakUp(lineItem: [[String]]) {
                    for property in lineItem {
                        if property.count >= 46 {
                            let entity = Ats(context: moc)
                            entity.atsIdent = property[0]
                            entity.seqNbr = property[1]
                            entity.direction = property[2]
                            entity.type = property[3]
                            entity.icao = property[4]
                            entity.bidirect = property[5]
                            entity.freqClass = property[6]
                            entity.level = property[7]
                            entity.status = property[8]
                            entity.wpt1Icao = property[9]
                            entity.wpt1NavType = property[10]
                            entity.wpt1Ident = property[11]
                            entity.wpt1Ctry = property[12]
                            entity.wpt1Desc1 = property[13]
                            entity.wpt1Desc2 = property[14]
                            entity.wpt1Desc3 = property[15]
                            entity.wpt1Desc4 = property[16]
                            entity.wpt1WgsLat = property[17]
                            entity.wpt1WgsDlat = property[18].toDecimal
                            entity.wpt1WgsLong = property[19]
                            entity.wpt1WgsDlong = property[20].toDecimal
                            entity.wpt2Icao = property[21]
                            entity.wpt2NavType = property[22]
                            entity.wpt2Ident = property[23]
                            entity.wpt2Ctry = property[24]
                            entity.wpt2Desc1 = property[25]
                            entity.wpt2Desc2 = property[26]
                            entity.wpt2Desc3 = property[27]
                            entity.wpt2Desc4 = property[28]
                            entity.wpt2WgsLat = property[29]
                            entity.wpt2WgsDlat = property[30].toDecimal
                            entity.wpt2WgsLong = property[31]
                            entity.wpt2WgsDlong = property[32].toDecimal
                            entity.outbdCrs = property[33].toDecimal
                            entity.distance = property[34].toDecimal
                            entity.inbdCrs = property[35].toDecimal
                            entity.minAlt = property[36].toDecimal
                            entity.upperLimit = property[37]
                            entity.lowerLimit = property[38]
                            entity.maa = property[39]
                            entity.cruiseLevel = property[40]
                            entity.rnp = property[41]
                            entity.cycleDate = property[42]
                            entity.rvsm = property[43]
                            entity.fixTurn1 = property[44]
                            entity.fixTurn2 = property[45]
                        }}
                    moc.performAndWait {
                        do {
                            try moc.save()
                            DispatchQueue.main.async {
                                DafifCoreDataLoader.shared.incrementPercentComplete()
                            }
                        } catch {
                            print(error)
                        }}}
                
                let smaller = lineItem.chunked(into: lineItem.count/10)
                for each in smaller {
                    breakUp(lineItem: each)
                }
                print("\(fileNames[i]) DONE")
            default:
                print("Nothing to see here")
            }}
        print("\(#file) :: \(#function) :: complete")
    }
}

