import Foundation
import UIKit

extension NSDate{
    func dateComponents() -> NSDateComponents{
        let calendar = NSCalendar.currentCalendar()
        let dateComponents = calendar.components([NSCalendarUnit.Year, NSCalendarUnit.Month, NSCalendarUnit.Day, NSCalendarUnit.Hour, NSCalendarUnit.Minute, NSCalendarUnit.Second], fromDate: self)
        return dateComponents
    }
    func timeIntervelToNow() -> String{
        if self.compare(NSDate()) == NSComparisonResult.OrderedDescending {
            return "刚才"
        }
        let interval = NSDate().timeIntervalSinceDate(self)
        if interval < 60 * 60 {
            return "\(Int(interval / 60))分钟前"
        }
        if interval < 60 * 60 * 24 {
            return "\(Int(interval / 3600))小时前"
        }
        if interval < 60 * 60 * 24 * 365 {
            return "\(Int(interval) / Int(60 * 60 * 24)))天前"
        }
        return "\(Int(interval) / Int(60 * 60 * 24 * 365)))年前"
    }
    
    // Sample: 2016/7/13 15:14
    func presentation() -> String {
        let component = self.dateComponents()
        return "\(component.year)/\(component.month.addZeroPrefix())/\(component.day.addZeroPrefix()) \(component.hour.addZeroPrefix()):\(component.minute.addZeroPrefix())"
    }
    
}

private extension Int {
    func addZeroPrefix() -> String {
        if self >= 10 { return "\(self)" }
        return "0\(self)"
    }
}

