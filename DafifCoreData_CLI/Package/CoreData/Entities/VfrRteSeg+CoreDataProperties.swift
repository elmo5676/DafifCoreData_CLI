/*******************************************************
* VfrRteSeg+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension VfrRteSeg {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VfrRteSeg> {
        return NSFetchRequest<VfrRteSeg>(entityName: "VfrRteSeg")
    }

    @NSManaged public var alt: NSDecimalNumber?
    @NSManaged public var altDesc: String?
    @NSManaged public var atHeli: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var magCrs: NSDecimalNumber?
    @NSManaged public var pathCode: String?
    @NSManaged public var ptDlatOffL: String?
    @NSManaged public var ptDlatOffR: String?
    @NSManaged public var ptDlongOffL: String?
    @NSManaged public var ptDlongOffR: String?
    @NSManaged public var ptIdentity: String?
    @NSManaged public var ptLatOffL: String?
    @NSManaged public var ptLatOffR: String?
    @NSManaged public var ptLongOffL: String?
    @NSManaged public var ptLongOffR: String?
    @NSManaged public var ptName: String?
    @NSManaged public var ptSym: String?
    @NSManaged public var ptType: String?
    @NSManaged public var ptWgsDlat: NSDecimalNumber?
    @NSManaged public var ptWgsDlong: NSDecimalNumber?
    @NSManaged public var ptWgsLat: String?
    @NSManaged public var ptWgsLong: String?
    @NSManaged public var rteIdent: String?
    @NSManaged public var rteName: String?
    @NSManaged public var segName: String?
    @NSManaged public var segNbr: String?
    @NSManaged public var turnDir: String?
    @NSManaged public var utmGrid: String?

}
