/*******************************************************
 * ArptCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class ArptCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["ILS.TXT", "RWY.TXT", "ARPT_RMK.TXT", "ACOM.TXT", "ARPT.TXT", "ACOM_RMK.TXT", "ANAV.TXT", "AGEAR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: Ils(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: Rwy(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: ArptRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: Acom(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: Arpt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 5:
                deleteCD(entityType: AcomRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 6:
                deleteCD(entityType: Anav(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 7:
                deleteCD(entityType: Agear(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .arpt)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 30 {
                        let entity = Ils(context: moc)
                        entity.arptIdent = property[0]
                        entity.rwyIdent = property[1]
                        entity.compType = property[2]
                        entity.colctn = property[3]
                        entity.name = property[4]
                        entity.freq = property[5]
                        entity.chan = property[6]
                        entity.gsAngle = property[7]
                        entity.lczrGslctn = property[8]
                        entity.locMkrlctn = property[9]
                        entity.elev = property[10].toDecimal
                        entity.locHdatum = property[11]
                        entity.wgsDatum = property[12]
                        entity.ilsCat = property[13]
                        entity.wgsLat = property[14]
                        entity.wgsDlat = property[15].toDecimal
                        entity.wgsLong = property[16]
                        entity.wgsDlong = property[17].toDecimal
                        entity.navIdent = property[18]
                        entity.navType = property[19]
                        entity.navCtry = property[20]
                        entity.navKeyCd = property[21]
                        entity.magVar = property[22].toDecimal
                        entity.slaveVar = property[23]
                        entity.ilsBrg = property[24].toDecimal
                        entity.locWidth = property[25]
                        entity.thdCrossingHgt = property[26].toDecimal
                        entity.dmeBias = property[27]
                        entity.cycleDate = property[28]
                        entity.dmeNP = property[29]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 51 {
                        let entity = Rwy(context: moc)
                        entity.arptIdent = property[0]
                        entity.highIdent = property[1]
                        entity.lowIdent = property[2]
                        entity.highHdg = property[3].toDecimal
                        entity.lowHdg = property[4].toDecimal
                        entity.length = property[5].toDecimal
                        entity.rwyWidth = property[6].toDecimal
                        entity.surface = property[7]
                        entity.pcn = property[8]
                        entity.heWgsLat = property[9]
                        entity.heWgsDlat = property[10].toDecimal
                        entity.heWgsLong = property[11]
                        entity.heWgsDlong = property[12].toDecimal
                        entity.heElev = property[13].toDecimal
                        entity.heSlope = property[14].toDecimal
                        entity.heTdze = property[15].toDecimal
                        entity.heDt = property[16].toDecimal
                        entity.heDtElev = property[17].toDecimal
                        entity.hlgtSys1 = property[18]
                        entity.hlgtSys2 = property[19]
                        entity.hlgtSys3 = property[20]
                        entity.hlgtSys4 = property[21]
                        entity.hlgtSys5 = property[22]
                        entity.hlgtSys6 = property[23]
                        entity.hlgtSys7 = property[24]
                        entity.hlgtSys8 = property[25]
                        entity.leWgsLat = property[26]
                        entity.leWgsDlat = property[27].toDecimal
                        entity.leWgsLong = property[28]
                        entity.leWgsDlong = property[29].toDecimal
                        entity.leElev = property[30].toDecimal
                        entity.leSlope = property[31].toDecimal
                        entity.leTdze = property[32].toDecimal
                        entity.leDt = property[33]
                        entity.leDtElev = property[34].toDecimal
                        entity.llgtSys1 = property[35]
                        entity.llgtSys2 = property[36]
                        entity.llgtSys3 = property[37]
                        entity.llgtSys4 = property[38]
                        entity.llgtSys5 = property[39]
                        entity.llgtSys6 = property[40]
                        entity.llgtSys7 = property[41]
                        entity.llgtSys8 = property[42]
                        entity.heTrueHdg = property[43].toDecimal
                        entity.leTrueHdg = property[44].toDecimal
                        entity.cldRwy = property[45]
                        entity.helandDis = property[46]
                        entity.heTakeoff = property[47]
                        entity.lelandDis = property[48]
                        entity.leTakeoff = property[49]
                        entity.cycleDate = property[50]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 4 {
                        let entity = ArptRmk(context: moc)
                        entity.arptIdent = property[0]
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
                    if property.count >= 24 {
                        let entity = Acom(context: moc)
                        entity.arptIdent = property[0]
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
            case 4:
                for property in lineItem {
                    if property.count >= 25 {
                        let entity = Arpt(context: moc)
                        entity.arptIdent = property[0]
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
                        entity.secondArpt = property[16]
                        entity.oprAgy = property[17]
                        entity.secName = property[18]
                        entity.secIcao = property[19]
                        entity.secFaa = property[20]
                        entity.secOprAgy = property[21]
                        entity.cycleDate = property[22]
                        entity.terrain = property[23]
                        entity.hydro = property[24]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 5:
                for property in lineItem {
                    if property.count >= 6 {
                        let entity = AcomRmk(context: moc)
                        entity.arptIdent = property[0]
                        entity.commType = property[1]
                        entity.rmkSeq = property[2]
                        entity.remark = property[3]
                        entity.cycleDate = property[4]
                        entity.multi = property[5]
                    }}
                DispatchQueue.main.async {
                            DafifCoreDataLoader.shared.incrementPercentComplete()
                        }
                print("\(fileNames[i]) DONE")
            case 6:
                for property in lineItem {
                    if property.count >= 10 {
                        let entity = Anav(context: moc)
                        entity.arptIdent = property[0]
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
            case 7:
                for property in lineItem {
                    if property.count >= 5 {
                        let entity = Agear(context: moc)
                        entity.arptIdent = property[0]
                        entity.rwyIdent = property[1]
                        entity.location = property[2]
                        entity.type = property[3]
                        entity.cycleDate = property[4]
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
            DispatchQueue.main.async {
            }
        } catch {
            print(error)
        }}
        print("\(#file) :: \(#function) :: complete")
    }
}
