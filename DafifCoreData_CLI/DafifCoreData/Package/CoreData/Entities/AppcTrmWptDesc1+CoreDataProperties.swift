/*******************************************************
* AppcTrmWptDesc1+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcTrmWptDesc1 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcTrmWptDesc1> {
        return NSFetchRequest<AppcTrmWptDesc1>(entityName: "AppcTrmWptDesc1")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wptDesc1: String?

}
