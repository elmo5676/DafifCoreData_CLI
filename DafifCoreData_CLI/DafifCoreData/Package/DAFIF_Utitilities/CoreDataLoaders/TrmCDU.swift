/*******************************************************
 * TrmCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

class TrmCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["TRM_RMK.TXT", "TRM_CLB.TXT", "TRM_SEG.TXT", "TRM_MIN.TXT", "TRM_MSA.TXT", "TRM_PAR.TXT", "TRM_FDR.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: TrmRmk(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: TrmClb(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: TrmSeg(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: TrmMin(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: TrmMsa(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 5:
                deleteCD(entityType: TrmPar(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 6:
                deleteCD(entityType: TrmFdr(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            var lineItem: [[String]] = getData(from: fileNames[i], inDir: .trm)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 9 {
                        let entity = TrmRmk(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.appType = property[3]
                        entity.rmkSeq = property[4]
                        entity.icao = property[5]
                        entity.remarks = property[6]
                        entity.cycleDate = property[7]
                        entity.rmkType = property[8]
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
            case 1:
                for property in lineItem {
                    if property.count >= 12 {
                        let entity = TrmClb(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.rwyId = property[3]
                        entity.occNo = property[4]
                        entity.icao = property[5]
                        entity.desig = property[6]
                        entity.knots = property[7].toDecimal
                        entity.rateDesc = property[8]
                        entity.alt = property[9].toDecimal
                        entity.ftnote = property[10]
                        entity.cycleDate = property[11]
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
            case 2:
                func breakUp(lineItem: [[String]]) {
                    for property in lineItem {
                        if property.count >= 65 {
                            let entity = TrmSeg(context: moc)
                            entity.arptIdent = property[0]
                            entity.proc = property[1]
                            entity.trmIdent = property[2]
                            entity.seqNbr = property[3]
                            entity.type = property[4]
                            entity.transition = property[5]
                            entity.icao = property[6]
                            entity.trackCd = property[7]
                            entity.wptId = property[8]
                            entity.wptCtry = property[9]
                            entity.wptDesc1 = property[10]
                            entity.wptDesc2 = property[11]
                            entity.wptDesc3 = property[12]
                            entity.wptDesc4 = property[13]
                            entity.turnDir = property[14]
                            entity.nav1Ident = property[15]
                            entity.nav1Type = property[16]
                            entity.nav1Ctry = property[17]
                            entity.nav1KeyCd = property[18]
                            entity.nav1Bear = property[19].toDecimal
                            entity.nav1Dist = property[20].toDecimal
                            entity.nav2Ident = property[21]
                            entity.nav2Type = property[22]
                            entity.nav2Ctry = property[23]
                            entity.nav2KeyCd = property[24]
                            entity.nav2Bear = property[25].toDecimal
                            entity.nav2Dist = property[26].toDecimal
                            entity.magCrs = property[27].toDecimal
                            entity.distance = property[28].toDecimal
                            entity.altDesc = property[29]
                            entity.altOne = property[30]
                            entity.altTwo = property[31]
                            entity.rnp = property[32]
                            entity.cycleDate = property[33]
                            entity.wptWgsLat = property[34]
                            entity.wptWgsDlat = property[35].toDecimal
                            entity.wptWgsLong = property[36]
                            entity.wptWgsDlong = property[37].toDecimal
                            entity.wptMvar = property[38].toDecimal
                            entity.nav1WgsLat = property[39]
                            entity.nav1WgsDlat = property[40].toDecimal
                            entity.nav1WgsLong = property[41]
                            entity.nav1WgsDlong = property[42].toDecimal
                            entity.nav1Mvar = property[43]
                            entity.nav1DmeWgsLat = property[44]
                            entity.nav1DmeWgsDlat = property[45].toDecimal
                            entity.nav1DmeWgsLong = property[46]
                            entity.nav1DmeWgsDlong = property[47].toDecimal
                            entity.nav2WgsLat = property[48]
                            entity.nav2WgsDlat = property[49].toDecimal
                            entity.nav2WgsLong = property[50]
                            entity.nav2WgsDlong = property[51].toDecimal
                            entity.nav2Mvar = property[52]
                            entity.nav2DmeWgsLat = property[53]
                            entity.nav2DmeWgsDlat = property[54].toDecimal
                            entity.nav2DmeWgsLong = property[55]
                            entity.nav2DmeWgsDlong = property[56].toDecimal
                            entity.speed = property[57]
                            entity.speedAc = property[58]
                            entity.speedAlt = property[59]
                            entity.speed2 = property[60]
                            entity.speedAc2 = property[61]
                            entity.speedAlt2 = property[62]
                            entity.vnav = property[63]
                            entity.tch = property[64]
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
                
            case 3:
                for property in lineItem {
                    if property.count >= 32 {
                        let entity = TrmMin(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.appType = property[3]
                        entity.icao = property[4]
                        entity.catADh = property[5].toDecimal
                        entity.catARv = property[6].toDecimal
                        entity.catAHa = property[7].toDecimal
                        entity.catAWxCl = property[8].toDecimal
                        entity.catAWxPv = property[9].toDecimal
                        entity.catBDh = property[10].toDecimal
                        entity.catBRv = property[11].toDecimal
                        entity.catBHa = property[12].toDecimal
                        entity.catBWxCl = property[13].toDecimal
                        entity.catBWxPv = property[14].toDecimal
                        entity.catCDh = property[15].toDecimal
                        entity.catCRv = property[16].toDecimal
                        entity.catCHa = property[17].toDecimal
                        entity.catCWxCl = property[18].toDecimal
                        entity.catCWxPv = property[19].toDecimal
                        entity.catDDh = property[20].toDecimal
                        entity.catDRv = property[21].toDecimal
                        entity.catDHa = property[22].toDecimal
                        entity.catDWxCl = property[23].toDecimal
                        entity.catDWxPv = property[24].toDecimal
                        entity.catEDh = property[25].toDecimal
                        entity.catERv = property[26].toDecimal
                        entity.catEHa = property[27].toDecimal
                        entity.catEWxCl = property[28].toDecimal
                        entity.catEWxPv = property[29].toDecimal
                        entity.minRmk = property[30]
                        entity.cycleDate = property[31]
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
            case 4:
                for property in lineItem {
                    if property.count >= 21 {
                        let entity = TrmMsa(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.secNbr = property[3]
                        entity.secAlt = property[4].toDecimal
                        entity.icao = property[5]
                        entity.navIdent = property[6]
                        entity.navType = property[7]
                        entity.navCtry = property[8]
                        entity.navKeyCd = property[9]
                        entity.secBear1 = property[10].toDecimal
                        entity.secBear2 = property[11].toDecimal
                        entity.wptIdent = property[12]
                        entity.wptCtry = property[13]
                        entity.secMile1 = property[14].toDecimal
                        entity.secMile2 = property[15].toDecimal
                        entity.wgsLat = property[16]
                        entity.wgsDlat = property[17].toDecimal
                        entity.wgsLong = property[18]
                        entity.wgsDlong = property[19].toDecimal
                        entity.cycleDate = property[20]
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
            case 5:
                for property in lineItem {
                    if property.count >= 14 {
                        let entity = TrmPar(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.icao = property[3]
                        entity.esAlt = property[4]
                        entity.julianDate = property[5]
                        entity.amdtNo = property[6]
                        entity.opr = property[7]
                        entity.hostCtryAuth = property[8]
                        entity.cycleDate = property[9]
                        entity.altMin = property[10].toDecimal
                        entity.tranAlt = property[11].toDecimal
                        entity.tranLvl = property[12]
                        entity.rteTypeQual = property[13]
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
            case 6:
                for property in lineItem {
                    if property.count >= 22 {
                        let entity = TrmFdr(context: moc)
                        entity.arptIdent = property[0]
                        entity.proc = property[1]
                        entity.trmIdent = property[2]
                        entity.fdrRteIdent = property[3]
                        entity.seqNbr = property[4]
                        entity.icao = property[5]
                        entity.wpt1Ident = property[6]
                        entity.wpt1Ctry = property[7]
                        entity.wpt2Ident = property[8]
                        entity.wpt2Ctry = property[9]
                        entity.alt = property[10].toDecimal
                        entity.magCrs = property[11].toDecimal
                        entity.distance = property[12].toDecimal
                        entity.wpt1WgsLat = property[13]
                        entity.wpt1WgsDlat = property[14].toDecimal
                        entity.wpt1WgsLong = property[15]
                        entity.wpt1WgsDlong = property[16].toDecimal
                        entity.wpt2WgsLat = property[17]
                        entity.wpt2WgsDlat = property[18].toDecimal
                        entity.wpt2WgsLong = property[19]
                        entity.wpt2WgsDlong = property[20].toDecimal
                        entity.cycleDate = property[21]
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
