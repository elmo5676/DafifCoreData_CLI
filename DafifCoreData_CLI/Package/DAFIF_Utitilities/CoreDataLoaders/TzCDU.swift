/*******************************************************
 * TzCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class TzCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["TZ_PAR.TXT", "TZ.txt"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: TzPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: Tz(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .tz)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 18 {
                        let entity = TzPar(context: moc)
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
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 28 {
                        let entity = Tz(context: moc)
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

