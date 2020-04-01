/*******************************************************
* AppcAbsorbingSys+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAbsorbingSys {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAbsorbingSys> {
        return NSFetchRequest<AppcAbsorbingSys>(entityName: "AppcAbsorbingSys")
    }

    @NSManaged public var abCode: String?
    @NSManaged public var description_: String?
    @NSManaged public var type: String?

}
