/*******************************************************
* ArfPt+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfPt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfPt> {
        return NSFetchRequest<ArfPt>(entityName: "ArfPt")
    }

    @NSManaged public var arfIdent: String?
    @NSManaged public var bearing: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var icao: String?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var ptIdent: String?
    @NSManaged public var ptNavFlag: String?
    @NSManaged public var ptSeqNbr: String?
    @NSManaged public var usage: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
