/*******************************************************
* Papp+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Papp {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Papp> {
        return NSFetchRequest<Papp>(entityName: "Papp")
    }

    @NSManaged public var apd: String?
    @NSManaged public var appIdent: String?
    @NSManaged public var appInd: String?
    @NSManaged public var arptIdent: String?
    @NSManaged public var crc: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var faaHostId: String?
    @NSManaged public var fpapAlHgt: String?
    @NSManaged public var fpapDlat: String?
    @NSManaged public var fpapDlong: String?
    @NSManaged public var fpapLat: String?
    @NSManaged public var fpapLong: String?
    @NSManaged public var fpapOrthHgt: String?
    @NSManaged public var fpcpTch: String?
    @NSManaged public var gpa: String?
    @NSManaged public var ltpDlat: NSDecimalNumber?
    @NSManaged public var ltpDlong: NSDecimalNumber?
    @NSManaged public var ltpLat: String?
    @NSManaged public var ltpLong: String?
    @NSManaged public var ltpOrthHgt: String?
    @NSManaged public var ltpThrsHgt: String?
    @NSManaged public var ofset: String?
    @NSManaged public var opsType: String?
    @NSManaged public var refId: String?
    @NSManaged public var refPds: String?
    @NSManaged public var rwId: String?
    @NSManaged public var spId: String?
    @NSManaged public var uh: String?
    @NSManaged public var widthThrs: String?

}
