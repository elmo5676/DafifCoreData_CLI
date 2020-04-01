/*******************************************************
* SupphCDU
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//
//import CoreData
//import SwiftUI
//
//class SupphCDU: DafifLoaderUtilities, CoreDataUtilProtocol {
//    
//    init(cdlDelegate: DafifCoreDataLoaderDelegate) {
//        self.cdlDelegate = cdlDelegate
//    }
//    
//    
//    
//    @Published var percentComplete: CGFloat = 0.0 { didSet {
//        cdlDelegate?.updatePercentage(percentComplete)
//        }}
//    
//    // MARK: - File Handling
//    var fileNames: [String] = ["FUELOIL.TXT", "SVC_RMK.TXT", "ADD_RWY.TXT", "GEN.TXT"]
//    
//    func deleteAllFromCoreData(moc: NSManagedObjectContext) {
//        for i in 0..<fileNames.count {
//            let name = fileNames[i]
//            switch i {
//            case 0:
//                deleteCD(entityType: Fueloil(), named: name, moc: moc)
//            case 1:
//                deleteCD(entityType: SvcRmk(), named: name, moc: moc)
//            case 2:
//                deleteCD(entityType: AddRwy(), named: name, moc: moc)
//            case 3:
//                deleteCD(entityType: Gen(), named: name, moc: moc)
//            default:
//                print("Nothing to delete")
//            }}}
//    
//    func loadAllFolderItems(moc: NSManagedObjectContext) {
//        for i in 0..<fileNames.count {
//            let lineItem: [[String]] = getData(from: fileNames[i], inDir: .supph)
//            switch i {
//            case 0:
//                for property in lineItem {
//                    if property.count >= 7 {
//                        let entity = Fueloil(context: moc)
//                        entity.heliIdent = property[0]
//                        entity.icao = property[1]
//                        entity.fuel = property[2]
//                        entity.oil = property[3]
//                        entity.jasu = property[4]
//                        entity.supFluids = property[5]
//                        entity.cycleDate = property[6]
//                    }}
//                print("\(fileNames[i]) DONE")
//            case 1:
//                for property in lineItem {
//                    if property.count >= 6 {
//                        let entity = SvcRmk(context: moc)
//                        entity.heliIdent = property[0]
//                        entity.type = property[1]
//                        entity.rmkSeq = property[2]
//                        entity.icao = property[3]
//                        entity.remarks = property[4]
//                        entity.cycleDate = property[5]
//                    }}
//                print("\(fileNames[i]) DONE")
//            case 2:
//                for property in lineItem {
//                    if property.count >= 25 {
//                        let entity = AddRwy(context: moc)
//                        entity.heliIdent = property[0]
//                        entity.highIdent = property[1]
//                        entity.loIdent = property[2]
//                        entity.icao = property[3]
//                        entity.heDtLat = property[4].toDouble
//                        entity.heDtDlat = property[5].toDouble
//                        entity.heDtLong = property[6].toDouble
//                        entity.heDtDlong = property[7].toDouble
//                        entity.heOverrunDis = property[8].toDouble
//                        entity.heSurface = property[9]
//                        entity.heOverrunLat = property[10]
//                        entity.heOverrunDlat = property[11].toDouble
//                        entity.heOverrunLong = property[12]
//                        entity.heOverrunDlong = property[13].toDouble
//                        entity.loDtLat = property[14].toDouble
//                        entity.loDtDlat = property[15].toDouble
//                        entity.loDtLong = property[16].toDouble
//                        entity.loDtDlong = property[17].toDouble
//                        entity.loOverrunDis = property[18].toDouble
//                        entity.loSurface = property[19]
//                        entity.loOverrunLat = property[20]
//                        entity.loOverrunDlat = property[21]
//                        entity.loOverrunLong = property[22]
//                        entity.loOverrunDlong = property[23].toDouble
//                        entity.cycleDate = property[24]
//                    }}
//                print("\(fileNames[i]) DONE")
//            case 3:
//                for property in lineItem {
//                    if property.count >= 13 {
//                        let entity = Gen(context: moc)
//                        entity.heliIdent = property[0]
//                        entity.icao = property[1]
//                        entity.altName = property[2]
//                        entity.cityCrossRef = property[3]
//                        entity.islGroup = property[4]
//                        entity.notam = property[5]
//                        entity.oprHrs = property[6]
//                        entity.clearStatus = property[7]
//                        entity.utmGrid = property[8]
//                        entity.time = property[9]
//                        entity.daylightSave = property[10]
//                        entity.flipPub = property[11]
//                        entity.cycleDate = property[12]
//                    }}
//                print("\(fileNames[i]) DONE")
//                DispatchQueue.main.async {
//                    self.percentComplete = 4/4
//                    }
//            default:
//                print("Nothing to see here")
//            }}
//        appDelegate.saveContext()
//        print("\(#file) :: \(#function) :: complete")
//    }
//}
//
