/*******************************************************
* Gen+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Gen {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Gen> {
        return NSFetchRequest<Gen>(entityName: "Gen")
    }

    @NSManaged public var altName: String?
    @NSManaged public var arptIdent: String?
    @NSManaged public var cityCrossRef: String?
    @NSManaged public var clearStatus: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var daylightSave: String?
    @NSManaged public var flipPub: String?
    @NSManaged public var icao: String?
    @NSManaged public var islGroup: String?
    @NSManaged public var notam: String?
    @NSManaged public var oprHrs: String?
    @NSManaged public var time: String?
    @NSManaged public var utmGrid: String?

}
