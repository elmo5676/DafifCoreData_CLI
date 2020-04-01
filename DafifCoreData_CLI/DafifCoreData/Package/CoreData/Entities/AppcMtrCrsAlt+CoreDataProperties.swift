/*******************************************************
* AppcMtrCrsAlt+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcMtrCrsAlt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcMtrCrsAlt> {
        return NSFetchRequest<AppcMtrCrsAlt>(entityName: "AppcMtrCrsAlt")
    }

    @NSManaged public var crsAlt: NSDecimalNumber?
    @NSManaged public var description_: String?

}
