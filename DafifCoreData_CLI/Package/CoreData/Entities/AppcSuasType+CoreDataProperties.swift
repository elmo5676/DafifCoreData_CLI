/*******************************************************
* AppcSuasType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcSuasType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcSuasType> {
        return NSFetchRequest<AppcSuasType>(entityName: "AppcSuasType")
    }

    @NSManaged public var description_: String?
    @NSManaged public var type: String?

}
