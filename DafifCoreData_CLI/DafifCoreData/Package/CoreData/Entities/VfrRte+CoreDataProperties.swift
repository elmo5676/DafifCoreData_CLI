/*******************************************************
* VfrRte+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension VfrRte {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VfrRte> {
        return NSFetchRequest<VfrRte>(entityName: "VfrRte")
    }

    @NSManaged public var cityCrossRef: String?
    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var elev: NSDecimalNumber?
    @NSManaged public var faaHostId: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var heliName: String?
    @NSManaged public var icao: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var magVar: NSDecimalNumber?
    @NSManaged public var rpWgsDlat: NSDecimalNumber?
    @NSManaged public var rpWgsDlong: NSDecimalNumber?
    @NSManaged public var stateProv: String?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
