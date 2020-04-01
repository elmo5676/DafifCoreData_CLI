/*******************************************************
 * BdryCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class BdryCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["BDRY.TXT", "BDRY_CTRY.TXT", "BDRY_PAR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Bdry(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: BdryCtry(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: BdryPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .bdry)
            switch i {
            case 0:
                func breakUp(lineItem: [[String]]) {
                    for property in lineItem {
                        if property.count >= 28 {
                            let entity = Bdry(context: moc)
                            entity.bdryIdent = property[0]
                            entity.segNbr = property[1]
                            entity.name = property[2]
                            entity.type = property[3]
                            entity.icao = property[4]
                            entity.shap = property[5]
                            entity.derivation = property[6]
                            entity.wgsLat1 = property[7]
                            entity.wgsDlat1 = property[8].toDecimal
                            entity.wgsLong1 = property[9]
                            entity.wgsDlong1 = property[10].toDecimal
                            entity.wgsLat2 = property[11]
                            entity.wgsDlat2 = property[12].toDecimal
                            entity.wgsLong2 = property[13]
                            entity.wgsDlong2 = property[14].toDecimal
                            entity.wgsLat0 = property[15]
                            entity.wgsDlat0 = property[16].toDecimal
                            entity.wgsLong0 = property[17]
                            entity.wgsDlong0 = property[18].toDecimal
                            entity.radius1 = property[19]
                            entity.radius2 = property[20]
                            entity.bearing1 = property[21].toDecimal
                            entity.bearing2 = property[22].toDecimal
                            entity.navIdent = property[23]
                            entity.navType = property[24]
                            entity.navCtry = property[25]
                            entity.navKeyCd = property[26]
                            entity.cycleDate = property[27]
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
                            let entity = BdryCtry(context: moc)
                            entity.bdryIdent = property[0]
                            entity.segNbr = property[1]
                            entity.ctry1 = property[2]
                            entity.ctry2 = property[3]
                            entity.ctry3 = property[4]
                            entity.ctry4 = property[5]
                            entity.ctry5 = property[6]
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
                for property in lineItem {
                    if property.count >= 20 {
                        let entity = BdryPar(context: moc)
                        entity.bdryIdent = property[0]
                        entity.type = property[1]
                        entity.name = property[2]
                        entity.icao = property[3]
                        entity.conAuth = property[4]
                        entity.locHdatum = property[5]
                        entity.wgsDatum = property[6]
                        entity.commName = property[7]
                        entity.commFreq1 = property[8]
                        entity.commFreq2 = property[9]
                        entity.class_ = property[10]
                        entity.classExc = property[11]
                        entity.classExRmk = property[12]
                        entity.level = property[13]
                        entity.upperAlt = property[14]
                        entity.lowerAlt = property[15]
                        entity.rnp = property[16]
                        entity.cycleDate = property[17]
                        entity.upRvsm = property[18]
                        entity.loRvsm = property[19]
                    }}
                moc.performAndWait {
                    do {
                        try moc.save()
                        DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                    } catch {
                        print(error)
                    }}
                print("\(fileNames[i]) DONE")
            default:
                print("Nothing to see here")
            }}
        print("\(#file) :: \(#function) :: complete")
    }
}
