/*******************************************************
 * HlptCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class HlptCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["PAD.TXT", "HNAV.TXT", "HLPT_RMK.TXT", "HLPT.TXT", "HCOM.TXT", "Hcom_RMK.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Pad(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: Hnav(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: HlptRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: Hlpt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: Hcom(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 5:
                deleteCD(entityType: HcomRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .hlpt)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 40 {
                        let entity = Pad(context: moc)
                        entity.heliIdent = property[0]
                        entity.seqNbr = property[1]
                        entity.length = property[2].toDecimal
                        entity.width = property[3].toDecimal
                        entity.surface = property[4]
                        entity.acType = property[5]
                        entity.wgsLat = property[6]
                        entity.wgsDlat = property[7].toDecimal
                        entity.wgsLong = property[8]
                        entity.wgsDlong = property[9].toDecimal
                        entity.lgtSys1 = property[10]
                        entity.lgtSys2 = property[11]
                        entity.lgtSys3 = property[12]
                        entity.highIdent = property[13]
                        entity.highHdg = property[14].toDecimal
                        entity.heWgsLat = property[15]
                        entity.heWgsDlat = property[16].toDecimal
                        entity.heWgsLong = property[17]
                        entity.heWgsDlong = property[18].toDecimal
                        entity.heElev = property[19].toDecimal
                        entity.heSlope = property[20].toDecimal
                        entity.hlgtSys1 = property[21]
                        entity.hlgtSys2 = property[22]
                        entity.hlgtSys3 = property[23]
                        entity.lowIdent = property[24]
                        entity.lowHdg = property[25].toDecimal
                        entity.leWgsLat = property[26]
                        entity.leWgsDlat = property[27].toDecimal
                        entity.leWgsLong = property[28]
                        entity.leWgsDlong = property[29].toDecimal
                        entity.leElev = property[30].toDecimal
                        entity.leSlope = property[31].toDecimal
                        entity.llgtSys1 = property[32]
                        entity.llgtSys2 = property[33]
                        entity.llgtSys3 = property[34]
                        entity.highTrue = property[35]
                        entity.lowTrue = property[36]
                        entity.cldRwy = property[37]
                        entity.padId = property[38]
                        entity.cycleDate = property[39]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 10 {
                        let entity = Hnav(context: moc)
                        entity.heliIdent = property[0]
                        entity.navIdent = property[1]
                        entity.navType = property[2]
                        entity.navCtry = property[3]
                        entity.navKeyCd = property[4]
                        entity.name = property[5]
                        entity.atFld = property[6]
                        entity.bearing = property[7].toDecimal
                        entity.distance = property[8].toDecimal
                        entity.cycleDate = property[9]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 4 {
                        let entity = HlptRmk(context: moc)
                        entity.heliIdent = property[0]
                        entity.rmkSeq = property[1]
                        entity.remark = property[2]
                        entity.cycleDate = property[3]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 19 {
                        let entity = Hlpt(context: moc)
                        entity.heliIdent = property[0]
                        entity.name = property[1]
                        entity.stateProv = property[2]
                        entity.icao = property[3]
                        entity.faaHostId = property[4]
                        entity.locHdatum = property[5]
                        entity.wgsDatum = property[6]
                        entity.wgsLat = property[7]
                        entity.wgsDlat = property[8].toDecimal
                        entity.wgsLong = property[9]
                        entity.wgsDlong = property[10].toDecimal
                        entity.elev = property[11].toDecimal
                        entity.type = property[12]
                        entity.magVar = property[13].toDecimal
                        entity.wac = property[14]
                        entity.beacon = property[15]
                        entity.cycleDate = property[16]
                        entity.terrain = property[17]
                        entity.hydro = property[18]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 4:
                for property in lineItem {
                    if property.count >= 24 {
                        let entity = Hcom(context: moc)
                        entity.heliIdent = property[0]
                        entity.commType = property[1]
                        entity.commName = property[2]
                        entity.sym = property[3]
                        entity.freq1 = property[4]
                        entity.freq2 = property[5]
                        entity.freq3 = property[6]
                        entity.freq4 = property[7]
                        entity.freq5 = property[8]
                        entity.sec = property[9]
                        entity.sOprH = property[10]
                        entity.cycleDate = property[11]
                        entity.multi = property[12]
                        entity.freqMulti = property[13]
                        entity.comFreq1 = property[14]
                        entity.freqUnit1 = property[15]
                        entity.comFreq2 = property[16]
                        entity.freqUnit2 = property[17]
                        entity.comFreq3 = property[18]
                        entity.freqUnit3 = property[19]
                        entity.comFreq4 = property[20]
                        entity.freqUnit4 = property[21]
                        entity.comFreq5 = property[22]
                        entity.freqUnit5 = property[23]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 5:
                for property in lineItem {
                    if property.count >= 7 {
                        let entity = HcomRmk(context: moc)
                        entity.heliIdent = property[0]
                        entity.commType = property[1]
                        entity.rmkSeq = property[2]
                        entity.remark = property[3]
                        entity.cycleDate = property[4]
                        entity.multi = property[5]
                        entity.freqMulti = property[6]
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
