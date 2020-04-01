/*******************************************************
* Hold+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Hold {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hold> {
        return NSFetchRequest<Hold>(entityName: "Hold")
    }

    @NSManaged public var altOne: String?
    @NSManaged public var altTwo: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var dup: String?
    @NSManaged public var icao: String?
    @NSManaged public var inbCrs: NSDecimalNumber?
    @NSManaged public var length: NSDecimalNumber?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var speed: String?
    @NSManaged public var time: String?
    @NSManaged public var trackCd: String?
    @NSManaged public var turnDir: String?
    @NSManaged public var wptCtry: String?
    @NSManaged public var wptId: String?

}
