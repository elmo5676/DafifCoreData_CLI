/*******************************************************
* AppcPrPtType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcPrPtType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcPrPtType> {
        return NSFetchRequest<AppcPrPtType>(entityName: "AppcPrPtType")
    }

    @NSManaged public var description_: String?
    @NSManaged public var ptTy: String?

}
