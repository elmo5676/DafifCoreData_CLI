/*******************************************************
* Hnav+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Hnav {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hnav> {
        return NSFetchRequest<Hnav>(entityName: "Hnav")
    }

    @NSManaged public var atFld: String?
    @NSManaged public var bearing: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var heliIdent: String?
    @NSManaged public var name: String?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?

}
