/*******************************************************
* Hlpt+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Hlpt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hlpt> {
        return NSFetchRequest<Hlpt>(entityName: "Hlpt")
    }

    @NSManaged public var beacon: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var elev: NSDecimalNumber?
    @NSManaged public var faaHostId: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var hydro: String?
    @NSManaged public var icao: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var magVar: NSDecimalNumber?
    @NSManaged public var name: String?
    @NSManaged public var stateProv: String?
    @NSManaged public var terrain: String?
    @NSManaged public var type: String?
    @NSManaged public var wac: String?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
