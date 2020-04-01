/*******************************************************
* AppcPrAcftType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcPrAcftType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcPrAcftType> {
        return NSFetchRequest<AppcPrAcftType>(entityName: "AppcPrAcftType")
    }

    @NSManaged public var acftType: String?
    @NSManaged public var description_: String?

}
