import Foundation
import TableViewKit

class HelpCenterItem: TableItem {
    static var drawer = AnyCellDrawer(HelpCenterDrawer.self)

    var height: Height? = .dynamic(44.0)

    var title: String?
    var subtitles: [String]?
    var onHelpCenterButtonSelected: (() -> Void)?

    init() {
        title = "Find the answer to your questions"
        subtitles = ["Check my booking status", "Change my flight", "Check my baggage allowance"]
    }
}
