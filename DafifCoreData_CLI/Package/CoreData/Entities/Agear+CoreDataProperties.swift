/*******************************************************
* Agear+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Agear {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Agear> {
        return NSFetchRequest<Agear>(entityName: "Agear")
    }

    @NSManaged public var arptIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var location: String?
    @NSManaged public var rwyIdent: String?
    @NSManaged public var type: String?

}
