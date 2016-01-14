import Foundation
import UIKit

extension Double{
    func timestampToNSDate()->NSDate{
        return NSDate(timeIntervalSince1970: self)
    }
}
