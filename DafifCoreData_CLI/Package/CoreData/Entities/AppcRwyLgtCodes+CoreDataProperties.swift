/*******************************************************
* AppcRwyLgtCodes+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcRwyLgtCodes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcRwyLgtCodes> {
        return NSFetchRequest<AppcRwyLgtCodes>(entityName: "AppcRwyLgtCodes")
    }

    @NSManaged public var definition: String?
    @NSManaged public var lgtCode: String?
    @NSManaged public var sys: String?

}
