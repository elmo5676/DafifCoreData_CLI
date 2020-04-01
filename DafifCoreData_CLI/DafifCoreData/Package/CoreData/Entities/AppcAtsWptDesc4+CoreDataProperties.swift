/*******************************************************
* AppcAtsWptDesc4+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAtsWptDesc4 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAtsWptDesc4> {
        return NSFetchRequest<AppcAtsWptDesc4>(entityName: "AppcAtsWptDesc4")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wpt1Desc4: String?

}
