/*******************************************************
* Wpt+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Wpt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Wpt> {
        return NSFetchRequest<Wpt>(entityName: "Wpt")
    }

    @NSManaged public var bearing: NSDecimalNumber?
    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var desc: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var icao: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var magVar: NSDecimalNumber?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var rwyIcao: String?
    @NSManaged public var rwyId: String?
    @NSManaged public var stateProv: String?
    @NSManaged public var type: String?
    @NSManaged public var usageCd: String?
    @NSManaged public var wac: String?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?
    @NSManaged public var wptIdent: String?
    @NSManaged public var wptNavFlag: String?
    @NSManaged public var wptRvsm: String?

}
