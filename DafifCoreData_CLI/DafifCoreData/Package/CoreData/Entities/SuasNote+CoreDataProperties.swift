/*******************************************************
* SuasNote+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension SuasNote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SuasNote> {
        return NSFetchRequest<SuasNote>(entityName: "SuasNote")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var noteNbr: String?
    @NSManaged public var noteType: String?
    @NSManaged public var remarks: String?
    @NSManaged public var sector: String?
    @NSManaged public var suasIdent: String?

}
