
import FSPagerView
import UIKit

class ViewController:
    UIViewController,
    FSPagerViewDataSource
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupPagerView()
    }
    
    @IBOutlet private var pagerContainerView: UIView!
    private var pgrView: FSPagerView!

    private let CELL_ID = "CELL_ID"
    private typealias Cell = FSPagerViewCell
    
    private func setupPagerView()
    {
        let rect = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.pgrView = FSPagerView(frame: rect)
        self.pagerContainerView.embeddedView = self.pgrView
        
        self.pgrView.dataSource = self
        self.pgrView.register(Cell.self, forCellWithReuseIdentifier: self.CELL_ID)
        self.pgrView.reloadData()
    }

    func numberOfItems(in pagerView: FSPagerView) -> Int
    {
        return 5
    }
    
    func pagerView(
        _ pagerView: FSPagerView,
        cellForItemAt index: Int
    ) -> FSPagerViewCell {
        let cell =
            pagerView.dequeueReusableCell(
                withReuseIdentifier: self.CELL_ID,
                at: index
            )

        cell.textLabel?.text = "Index '\(index)'"
        return cell
    }

}

