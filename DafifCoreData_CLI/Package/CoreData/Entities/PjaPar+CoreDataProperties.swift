/*******************************************************
* PjaPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension PjaPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PjaPar> {
        return NSFetchRequest<PjaPar>(entityName: "PjaPar")
    }

    @NSManaged public var alt: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var effTimes: String?
    @NSManaged public var hours: String?
    @NSManaged public var icaoRegion: String?
    @NSManaged public var name: String?
    @NSManaged public var oprTime: String?
    @NSManaged public var pjaIdent: String?
    @NSManaged public var stateProv: String?

}
