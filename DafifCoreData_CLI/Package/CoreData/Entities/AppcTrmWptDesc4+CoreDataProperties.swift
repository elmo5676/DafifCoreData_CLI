/*******************************************************
* AppcTrmWptDesc4+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcTrmWptDesc4 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcTrmWptDesc4> {
        return NSFetchRequest<AppcTrmWptDesc4>(entityName: "AppcTrmWptDesc4")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wptDesc4: String?

}
