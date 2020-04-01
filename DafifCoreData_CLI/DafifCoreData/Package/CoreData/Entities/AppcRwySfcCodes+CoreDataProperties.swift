/*******************************************************
* AppcRwySfcCodes+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcRwySfcCodes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcRwySfcCodes> {
        return NSFetchRequest<AppcRwySfcCodes>(entityName: "AppcRwySfcCodes")
    }

    @NSManaged public var description_: String?
    @NSManaged public var sfc: String?

}
