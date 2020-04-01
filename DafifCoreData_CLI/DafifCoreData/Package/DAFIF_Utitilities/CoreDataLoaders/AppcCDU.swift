/*******************************************************
 * AppcCDU
 * Copyright © 4bitCrew, LLC - All Rights Reserved
 * Created on 3/26/20, for DafifViewer
 * Matthew Elmore <matt@4bitCrew.com>
 * Unauthorized copying of this file is strictly prohibited
 ********************************************************/

import CoreData
import SwiftUI

class AppcCDU: DafifLoaderUtilities, CoreDataUtilities {
    
    // MARK: - File Handling
    var fileNames: [String] = ["APPC_SUAS_WX.TXT", "APPC_COM_SYMBOLS.TXT", "APPC_PR_ACFT_TYPE.TXT", "APPC_NAV_TYPE.TXT", "APPC_ABSORBING_SYS.TXT", "APPC_TRM_TRACK_CD.TXT", "APPC_COM_TYPE.TXT", "APPC_LEVEL.TXT", "APPC_FLUIDS.TXT", "APPC_ATS_WPT_DESC_1.TXT", "APPC_ILS_CAT.TXT", "APPC_US_STATE_CODES.TXT", "APPC_ATS_FREQ_CLASS.TXT", "APPC_TRM_TYPE.TXT", "APPC_FUEL_CODES.TXT", "APPC_ATS_WPT_DESC_2.TXT", "APPC_ENGAGING_DEV.TXT", "APPC_PR_PT_TYPE.TXT", "APPC_TRM_NAV_TYPE.TXT", "APPC_CC_ICAO.TXT", "APPC_ATS_WPT_DESC_3.TXT", "APPC_MTR_CRS_ALT.TXT", "APPC_ATS_STATUS.TXT", "APPC_BDRY_TYPE.TXT", "APPC_ATS_WPT_DESC_4.TXT", "APPC_HELI_TYPE.TXT", "APPC_MTR_USAGE_CD.TXT", "APPC_WPT_TYPE.TXT", "APPC_ILS_COMP_TYPE.TXT", "APPC_WPT_USAGE_CD.TXT", "APPC_OILS.TXT", "APPC_AR_DIR.TXT", "APPC_DERIVATION.TXT", "APPC_AR_USAGE_CD.TXT", "APPC_RWY_SFC_CODES.TXT", "APPC_ATS_TYPE.TXT", "APPC_RWY_LGT_CODES.TXT", "APPC_NAV_STATUS.TXT", "APPC_PJA_TYPE.TXT", "APPC_NAV_RCC.TXT", "APPC_OPR_AGCY.TXT", "APPC_AR_TYPE.TXT", "APPC_TRM_PROC.TXT", "APPC_TRM_WPT_DESC_3.TXT", "APPC_TRM_WPT_DESC_2.TXT", "APPC_SHAPE.TXT", "APPC_COM_FREQ_UNIT.TXT", "APPC_TRM_WPT_DESC_1.TXT", "APPC_DAYLIGHT_SAV.TXT", "APPC_JASU.TXT", "APPC_ARPT_TYPE.TXT", "APPC_ACFT_CAP.TXT", "APPC_PJA_OPR_TIME.TXT", "APPC_TRM_WPT_DESC_4.TXT", "APPC_NAV_USAGE_CD.TXT", "APPC_LCL_HORIZ_DATUMS.TXT", "APPC_ILS_COLCTN.TXT", "APPC_ALTITUDE_DESC.TXT", "APPC_SUAS_TYPE.TXT"]
    
    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let name = fileNames[i]
            switch i {
            case 0:
                deleteCD(entityType: AppcSuasWx(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 1:
                deleteCD(entityType: AppcComSymbols(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 2:
                deleteCD(entityType: AppcPrAcftType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 3:
                deleteCD(entityType: AppcNavType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 4:
                deleteCD(entityType: AppcAbsorbingSys(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 5:
                deleteCD(entityType: AppcTrmTrackCd(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 6:
                deleteCD(entityType: AppcComType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 7:
                deleteCD(entityType: AppcLevel(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 8:
                deleteCD(entityType: AppcFluids(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 9:
                deleteCD(entityType: AppcAtsWptDesc1(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 10:
                deleteCD(entityType: AppcIlsCat(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 11:
                deleteCD(entityType: AppcUsStateCodes(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 12:
                deleteCD(entityType: AppcAtsFreqClass(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 13:
                deleteCD(entityType: AppcTrmType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 14:
                deleteCD(entityType: AppcFuelCodes(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 15:
                deleteCD(entityType: AppcAtsWptDesc2(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 16:
                deleteCD(entityType: AppcEngagingDev(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 17:
                deleteCD(entityType: AppcPrPtType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 18:
                deleteCD(entityType: AppcTrmNavType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 19:
                deleteCD(entityType: AppcCcIcao(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 20:
                deleteCD(entityType: AppcAtsWptDesc3(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 21:
                deleteCD(entityType: AppcMtrCrsAlt(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 22:
                deleteCD(entityType: AppcAtsStatus(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 23:
                deleteCD(entityType: AppcBdryType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 24:
                deleteCD(entityType: AppcAtsWptDesc4(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 25:
                deleteCD(entityType: AppcHeliType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 26:
                deleteCD(entityType: AppcMtrUsageCd(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 27:
                deleteCD(entityType: AppcWptType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 28:
                deleteCD(entityType: AppcIlsCompType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 29:
                deleteCD(entityType: AppcWptUsageCd(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 30:
                deleteCD(entityType: AppcOils(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 31:
                deleteCD(entityType: AppcArDir(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 32:
                deleteCD(entityType: AppcDerivation(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 33:
                deleteCD(entityType: AppcArUsageCd(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 34:
                deleteCD(entityType: AppcRwySfcCodes(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 35:
                deleteCD(entityType: AppcAtsType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 36:
                deleteCD(entityType: AppcRwyLgtCodes(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 37:
                deleteCD(entityType: AppcNavStatus(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 38:
                deleteCD(entityType: AppcPjaType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 39:
                deleteCD(entityType: AppcNavRcc(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 40:
                deleteCD(entityType: AppcOprAgcy(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 41:
                deleteCD(entityType: AppcArType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 42:
                deleteCD(entityType: AppcTrmProc(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 43:
                deleteCD(entityType: AppcTrmWptDesc3(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 44:
                deleteCD(entityType: AppcTrmWptDesc2(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 45:
                deleteCD(entityType: AppcShape(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 46:
                deleteCD(entityType: AppcComFreqUnit(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 47:
                deleteCD(entityType: AppcTrmWptDesc1(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 48:
                deleteCD(entityType: AppcDaylightSav(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 49:
                deleteCD(entityType: AppcJasu(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 50:
                deleteCD(entityType: AppcArptType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 51:
                deleteCD(entityType: AppcAcftCap(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 52:
                deleteCD(entityType: AppcPjaOprTime(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 53:
                deleteCD(entityType: AppcTrmWptDesc4(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 54:
                deleteCD(entityType: AppcNavUsageCd(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 55:
                deleteCD(entityType: AppcLclHorizDatums(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 56:
                deleteCD(entityType: AppcIlsColctn(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 57:
                deleteCD(entityType: AppcAltitudeDesc(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            case 58:
                deleteCD(entityType: AppcSuasType(), named: name, moc: moc)
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
            default:
                print("Nothing to delete")
            }}}
    
    
    func loadAllFolderItems(moc: NSManagedObjectContext) {
        for i in 0..<fileNames.count {
            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .appc)
            switch i {
            case 0:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcSuasWx(context: moc)
                        entity.wx = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 1:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcComSymbols(context: moc)
                        entity.sym = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 2:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcPrAcftType(context: moc)
                        entity.acftType = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 3:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcNavType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 4:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcAbsorbingSys(context: moc)
                        entity.abCode = property[0]
                        entity.type = property[1]
                        entity.description_ = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 5:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmTrackCd(context: moc)
                        entity.trackCd = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 6:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcComType(context: moc)
                        entity.comType = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 7:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcLevel(context: moc)
                        entity.level = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 8:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcFluids(context: moc)
                        entity.fluidCode = property[0]
                        entity.flip = property[1]
                        entity.description_ = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 9:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsWptDesc1(context: moc)
                        entity.wpt1Desc1 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 10:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcIlsCat(context: moc)
                        entity.cat = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 11:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcUsStateCodes(context: moc)
                        entity.ccpv = property[0]
                        entity.state = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 12:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsFreqClass(context: moc)
                        entity.freqClass = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 13:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 14:
                for property in lineItem {
                    if property.count >= 6 {
                        let entity = AppcFuelCodes(context: moc)
                        entity.fuelCode = property[0]
                        entity.flip = property[1]
                        entity.nato = property[2]
                        entity.aka = property[3]
                        entity.eefc = property[4]
                        entity.description_ = property[5]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 15:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsWptDesc2(context: moc)
                        entity.wpt1Desc2 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 16:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcEngagingDev(context: moc)
                        entity.enCode = property[0]
                        entity.type = property[1]
                        entity.description_ = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 17:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcPrPtType(context: moc)
                        entity.ptTy = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 18:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmNavType(context: moc)
                        entity.nav1Type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 19:
                for property in lineItem {
                    if property.count >= 4 {
                        let entity = AppcCcIcao(context: moc)
                        entity.country = property[0]
                        entity.countryName = property[1]
                        entity.icaoRgn = property[2]
                        entity.usage = property[3]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 20:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsWptDesc3(context: moc)
                        entity.wpt1Desc3 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 21:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcMtrCrsAlt(context: moc)
                        entity.crsAlt = property[0].toDecimal
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 22:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsStatus(context: moc)
                        entity.status = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 23:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcBdryType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 24:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsWptDesc4(context: moc)
                        entity.wpt1Desc4 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 25:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcHeliType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 26:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcMtrUsageCd(context: moc)
                        entity.usageCd = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 27:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcWptType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 28:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcIlsCompType(context: moc)
                        entity.compType = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 29:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcWptUsageCd(context: moc)
                        entity.usageCd = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 30:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcOils(context: moc)
                        entity.oilCode = property[0]
                        entity.flipNato = property[1]
                        entity.gradeType = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 31:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcArDir(context: moc)
                        entity.dir = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 32:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcDerivation(context: moc)
                        entity.derivation = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 33:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcArUsageCd(context: moc)
                        entity.useageCd = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 34:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcRwySfcCodes(context: moc)
                        entity.sfc = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 35:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAtsType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 36:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcRwyLgtCodes(context: moc)
                        entity.lgtCode = property[0]
                        entity.sys = property[1]
                        entity.definition = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 37:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcNavStatus(context: moc)
                        entity.status = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 38:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcPjaType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 39:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcNavRcc(context: moc)
                        entity.rcc = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 40:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcOprAgcy(context: moc)
                        entity.oprCode = property[0]
                        entity.type = property[1]
                        entity.description_ = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 41:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcArType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 42:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmProc(context: moc)
                        entity.proc = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 43:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmWptDesc3(context: moc)
                        entity.wptDesc3 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 44:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmWptDesc2(context: moc)
                        entity.wptDesc2 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 45:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcShape(context: moc)
                        entity.shap = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 46:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcComFreqUnit(context: moc)
                        entity.freqUnit = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 47:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmWptDesc1(context: moc)
                        entity.wptDesc1 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 48:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcDaylightSav(context: moc)
                        entity.timeCode = property[0]
                        entity.times = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 49:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcJasu(context: moc)
                        entity.jasuCode = property[0]
                        entity.type = property[1]
                        entity.description_ = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 50:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcArptType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 51:
                for property in lineItem {
                    if property.count >= 1 {
                        let entity = AppcAcftCap(context: moc)
                        entity.acftCode = property[0]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 52:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcPjaOprTime(context: moc)
                        entity.oprTime = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 53:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcTrmWptDesc4(context: moc)
                        entity.wptDesc4 = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 54:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcNavUsageCd(context: moc)
                        entity.usageCd = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 55:
                for property in lineItem {
                    if property.count >= 3 {
                        let entity = AppcLclHorizDatums(context: moc)
                        entity.datumCode = property[0]
                        entity.datum = property[1]
                        entity.country = property[2]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 56:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcIlsColctn(context: moc)
                        entity.colctn = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 57:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcAltitudeDesc(context: moc)
                        entity.desc = property[0]
                        entity.description_ = property[1]
                    }}
                DispatchQueue.main.async {
                    DafifCoreDataLoader.shared.incrementPercentComplete()
                }
                print("\(fileNames[i]) DONE")
            case 58:
                for property in lineItem {
                    if property.count >= 2 {
                        let entity = AppcSuasType(context: moc)
                        entity.type = property[0]
                        entity.description_ = property[1]
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

