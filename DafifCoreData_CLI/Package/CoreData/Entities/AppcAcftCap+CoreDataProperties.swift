/*******************************************************
* AppcAcftCap+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAcftCap {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAcftCap> {
        return NSFetchRequest<AppcAcftCap>(entityName: "AppcAcftCap")
    }

    @NSManaged public var acftCode: String?

}
