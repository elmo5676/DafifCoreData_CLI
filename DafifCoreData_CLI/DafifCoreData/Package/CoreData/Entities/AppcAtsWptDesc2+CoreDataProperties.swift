/*******************************************************
* AppcAtsWptDesc2+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAtsWptDesc2 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAtsWptDesc2> {
        return NSFetchRequest<AppcAtsWptDesc2>(entityName: "AppcAtsWptDesc2")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wpt1Desc2: String?

}
