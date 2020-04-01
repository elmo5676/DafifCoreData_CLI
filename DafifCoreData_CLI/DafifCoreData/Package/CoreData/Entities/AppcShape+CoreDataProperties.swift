/*******************************************************
* AppcShape+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcShape {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcShape> {
        return NSFetchRequest<AppcShape>(entityName: "AppcShape")
    }

    @NSManaged public var description_: String?
    @NSManaged public var shap: String?

}
