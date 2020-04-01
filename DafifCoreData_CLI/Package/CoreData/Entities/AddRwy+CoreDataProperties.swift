/*******************************************************
* AddRwy+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AddRwy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AddRwy> {
        return NSFetchRequest<AddRwy>(entityName: "AddRwy")
    }

    @NSManaged public var arptIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var heDtDlat: NSDecimalNumber?
    @NSManaged public var heDtDlong: NSDecimalNumber?
    @NSManaged public var heDtLat: NSDecimalNumber?
    @NSManaged public var heDtLong: NSDecimalNumber?
    @NSManaged public var heOverrunDis: NSDecimalNumber?
    @NSManaged public var heOverrunDlat: NSDecimalNumber?
    @NSManaged public var heOverrunDlong: NSDecimalNumber?
    @NSManaged public var heOverrunLat: String?
    @NSManaged public var heOverrunLong: String?
    @NSManaged public var heSurface: String?
    @NSManaged public var highIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var loDtDlat: NSDecimalNumber?
    @NSManaged public var loDtDlong: NSDecimalNumber?
    @NSManaged public var loDtLat: NSDecimalNumber?
    @NSManaged public var loDtLong: NSDecimalNumber?
    @NSManaged public var loIdent: String?
    @NSManaged public var loOverrunDis: NSDecimalNumber?
    @NSManaged public var loOverrunDlat: String?
    @NSManaged public var loOverrunDlong: NSDecimalNumber?
    @NSManaged public var loOverrunLat: String?
    @NSManaged public var loOverrunLong: String?
    @NSManaged public var loSurface: String?

}
