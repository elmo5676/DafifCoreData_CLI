/*******************************************************
* AppcAtsWptDesc3+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAtsWptDesc3 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAtsWptDesc3> {
        return NSFetchRequest<AppcAtsWptDesc3>(entityName: "AppcAtsWptDesc3")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wpt1Desc3: String?

}
