extension Double{
    func timestampToNSDate()->NSDate{
        return NSDate(timeIntervalSince1970: self)
    }
}
