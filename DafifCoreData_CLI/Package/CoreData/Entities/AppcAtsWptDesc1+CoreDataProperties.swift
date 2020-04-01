/*******************************************************
* AppcAtsWptDesc1+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAtsWptDesc1 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAtsWptDesc1> {
        return NSFetchRequest<AppcAtsWptDesc1>(entityName: "AppcAtsWptDesc1")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wpt1Desc1: String?

}
