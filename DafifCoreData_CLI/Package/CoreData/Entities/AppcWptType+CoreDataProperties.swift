/*******************************************************
* AppcWptType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcWptType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcWptType> {
        return NSFetchRequest<AppcWptType>(entityName: "AppcWptType")
    }

    @NSManaged public var description_: String?
    @NSManaged public var type: String?

}
