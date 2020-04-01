/*******************************************************
* IrCtry+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension IrCtry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IrCtry> {
        return NSFetchRequest<IrCtry>(entityName: "IrCtry")
    }

    @NSManaged public var bdryIdent: String?
    @NSManaged public var ctry1: String?
    @NSManaged public var ctry2: String?
    @NSManaged public var ctry3: String?
    @NSManaged public var ctry4: String?
    @NSManaged public var ctry5: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var segNbr: String?

}
