/*******************************************************
* MtrRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension MtrRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MtrRmk> {
        return NSFetchRequest<MtrRmk>(entityName: "MtrRmk")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var mtrIdent: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?

}
