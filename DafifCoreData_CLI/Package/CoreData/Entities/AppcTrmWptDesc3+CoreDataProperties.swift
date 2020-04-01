/*******************************************************
* AppcTrmWptDesc3+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcTrmWptDesc3 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcTrmWptDesc3> {
        return NSFetchRequest<AppcTrmWptDesc3>(entityName: "AppcTrmWptDesc3")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wptDesc3: String?

}
