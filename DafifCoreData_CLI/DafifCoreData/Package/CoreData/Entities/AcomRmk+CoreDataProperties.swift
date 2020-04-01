/*******************************************************
* AcomRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AcomRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AcomRmk> {
        return NSFetchRequest<AcomRmk>(entityName: "AcomRmk")
    }

    @NSManaged public var arptIdent: String?
    @NSManaged public var commType: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var multi: String?
    @NSManaged public var remark: String?
    @NSManaged public var rmkSeq: String?

}
