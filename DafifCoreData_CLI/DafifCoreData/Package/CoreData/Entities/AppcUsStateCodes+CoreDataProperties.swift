/*******************************************************
* AppcUsStateCodes+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcUsStateCodes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcUsStateCodes> {
        return NSFetchRequest<AppcUsStateCodes>(entityName: "AppcUsStateCodes")
    }

    @NSManaged public var ccpv: String?
    @NSManaged public var state: String?

}
