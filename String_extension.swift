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
}
