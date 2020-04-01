/*******************************************************
* AppcIlsCompType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcIlsCompType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcIlsCompType> {
        return NSFetchRequest<AppcIlsCompType>(entityName: "AppcIlsCompType")
    }

    @NSManaged public var compType: String?
    @NSManaged public var description_: String?

}
