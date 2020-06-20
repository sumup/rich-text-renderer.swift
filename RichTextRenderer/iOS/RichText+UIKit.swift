// ContentfulRichTextRenderer

import UIKit

public extension UITextView {
    func convertRectFromTextContainer(_ rect: CGRect) -> CGRect {
        return rect.offsetBy(dx: textContainerInset.left, dy: textContainerInset.top)
    }
}

public extension NSAttributedString {
    func attachmentRanges(forAttribute attribute: NSAttributedString.Key) -> [(attachment: View, range: NSRange)] {
        var ranges = [(View, NSRange)]()

        let fullRange = NSRange(location: 0, length: self.length)
        enumerateAttribute(attribute, in: fullRange) { value, range, _ in
            if let view = value as? View {
                ranges.append((view, range))
            }
        }
        return ranges
    }
}
