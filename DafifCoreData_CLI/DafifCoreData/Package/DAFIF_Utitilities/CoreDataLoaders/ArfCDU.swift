/*******************************************************
 * ArfCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class ArfCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["ARF_FT.TXT", "ARF_SEG.TXT", "ARF_ATC.TXT", "ARF_RMK.TXT", "ARF_PAR.TXT", "ARF_SCH.TXT", "ARF_PT.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: ArfFt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: ArfSeg(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: ArfAtc(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: ArfRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: ArfPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 5:
                deleteCD(entityType: ArfSch(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 6:
                deleteCD(entityType: ArfPt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .arf)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 8 {
                        let entity = ArfFt(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.icao = property[2]
                        entity.ftType = property[3]
                        entity.ftNo = property[4]
                        entity.rmkSeq = property[5]
                        entity.remarks = property[6]
                        entity.cycleDate = property[7]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 27 {
                        let entity = ArfSeg(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.segNbr = property[2]
                        entity.icao = property[3]
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
                        entity.wgsDlong0 = property[17]
                        entity.radius1 = property[18]
                        entity.radius2 = property[19]
                        entity.bearing1 = property[20].toDecimal
                        entity.bearing2 = property[21].toDecimal
                        entity.navIdent = property[22]
                        entity.navType = property[23]
                        entity.navCtry = property[24]
                        entity.navKeyCd = property[25]
                        entity.cycleDate = property[26]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 18 {
                        let entity = ArfAtc(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.icao = property[2]
                        entity.usage = property[3]
                        entity.center = property[4]
                        entity.cntrMult = property[5]
                        entity.freq1 = property[6]
                        entity.eW1 = property[7]
                        entity.freq2 = property[8]
                        entity.eW2 = property[9]
                        entity.freq3 = property[10]
                        entity.eW3 = property[11]
                        entity.freq4 = property[12]
                        entity.eW4 = property[13]
                        entity.freq5 = property[14]
                        entity.eW5 = property[15]
                        entity.atcRmk = property[16]
                        entity.cycleDate = property[17]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 6 {
                        let entity = ArfRmk(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.rmkSeq = property[2]
                        entity.icao = property[3]
                        entity.remarks = property[4]
                        entity.cycleDate = property[5]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 4:
                for property in lineItem {
                    if property.count >= 23 {
                        let entity = ArfPar(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.icao = property[2]
                        entity.type = property[3]
                        entity.ctry = property[4]
                        entity.locHdatum = property[5]
                        entity.wgsDatum = property[6]
                        entity.priFreq = property[7]
                        entity.bkpFreq = property[8]
                        entity.apnCode = property[9]
                        entity.apxCode = property[10]
                        entity.receiver = property[11]
                        entity.tanker = property[12]
                        entity.alt1Desc = property[13]
                        entity.refuel1Alt1 = property[14]
                        entity.refuel1Alt2 = property[15]
                        entity.alt2Desc = property[16]
                        entity.refuel2Alt1 = property[17]
                        entity.refuel2Alt2 = property[18]
                        entity.alt3Desc = property[19]
                        entity.refuel3Alt1 = property[20]
                        entity.refuel3Alt2 = property[21]
                        entity.cycleDate = property[22]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 5:
                for property in lineItem {
                    if property.count >= 7 {
                        let entity = ArfSch(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.icao = property[2]
                        entity.schUnit = property[3]
                        entity.dsn = property[4]
                        entity.comNo = property[5]
                        entity.cycleDate = property[6]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 6:
                for property in lineItem {
                    if property.count >= 18 {
                        let entity = ArfPt(context: moc)
                        entity.arfIdent = property[0]
                        entity.direction = property[1]
                        entity.ptSeqNbr = property[2]
                        entity.icao = property[3]
                        entity.usage = property[4]
                        entity.ptNavFlag = property[5]
                        entity.navIdent = property[6]
                        entity.navType = property[7]
                        entity.navCtry = property[8]
                        entity.navKeyCd = property[9]
                        entity.bearing = property[10].toDecimal
                        entity.distance = property[11].toDecimal
                        entity.wgsLat = property[12]
                        entity.wgsDlat = property[13].toDecimal
                        entity.wgsLong = property[14]
                        entity.wgsDlong = property[15].toDecimal
                        entity.cycleDate = property[16]
                        entity.ptIdent = property[17]
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



