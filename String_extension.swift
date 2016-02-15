import Foundation
import UIKit

extension String {
    init(htmlEncodedString: String) {
        let encodedData = htmlEncodedString.dataUsingEncoding(NSUTF8StringEncoding)!
        let attributedOptions : [String: AnyObject] = [
            NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
            NSCharacterEncodingDocumentAttribute: NSUTF8StringEncoding
        ]
        var attributedString:NSAttributedString?
        do{
            attributedString = try NSAttributedString(data: encodedData, options: attributedOptions, documentAttributes: nil)
        }catch{
            print(error)
        }
        self.init(attributedString!.string)
    }
    
    //MARK: time
    func iso8601toNSDate()->NSDate?{
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
        return dateFormatter.dateFromString(self)
    }

}
