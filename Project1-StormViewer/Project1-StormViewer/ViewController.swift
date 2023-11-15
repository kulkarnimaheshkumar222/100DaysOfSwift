//
//  ViewController.swift
//  Project1-StormViewer
//
//  Created by Mahesh Kulkarni on 14/11/23.
//

import UIKit



class ViewController: UIViewController {
    
    enum Section: Hashable {
        case main
    }
    var pictures = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    lazy var dataSource: UITableViewDiffableDataSource<Section, String> = {
        let dataSource = UITableViewDiffableDataSource<Section, String>(tableView: tableView) { tableView, indexPath, picture in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = picture
            cell.accessoryType = .disclosureIndicator
            //Challenge 1
            cell.textLabel?.font = UIFont.systemFont(ofSize: 25)
            return cell
        }
       return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Storm Viewer"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        loadImages()
        configureDataSource()
    }
    
    func configureDataSource() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, String>()
        snapshot.appendSections([.main])
        snapshot.appendItems(pictures, toSection: .main)
        dataSource.apply(snapshot,animatingDifferences: true)
    }

    func loadImages() {
        let fileManager = FileManager.default
        guard let path = Bundle.main.resourcePath else {
            return
        }
        do {
            let items = try fileManager.contentsOfDirectory(atPath: path)
            for item in items {
                if item.hasPrefix("nssl") {
                    pictures.append(item)
                    //Challenge 2
                    pictures.sort(by: { (first:String, second: String) in
                        return first < second
                    })
                }
            }
        } catch {
            print("File not found")
        }
        print(pictures)
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedImg = dataSource.itemIdentifier(for: indexPath)
        if let detailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            detailViewController.selectedImg = selectedImg ?? ""
            //Challenge 3
            detailViewController.indexDetailStr = "Picture \(indexPath.row + 1) of \(pictures.count)"
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}
