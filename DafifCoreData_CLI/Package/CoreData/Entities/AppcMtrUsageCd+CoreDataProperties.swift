/*******************************************************
* AppcMtrUsageCd+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcMtrUsageCd {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcMtrUsageCd> {
        return NSFetchRequest<AppcMtrUsageCd>(entityName: "AppcMtrUsageCd")
    }

    @NSManaged public var description_: String?
    @NSManaged public var usageCd: String?

}
