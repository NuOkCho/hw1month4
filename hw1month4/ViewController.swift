//
//  ViewController.swift
//  hw1month4
//
//  Created by Ahmed Muvaza on 28/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableVIew: UITableView!
    
    private let news: [News] = [News(image: "1", desctript: "sdf", name: "sadf")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    configureTV()
    }

    private func configureTV() {
        tableVIew.dataSource = self
        tableVIew.delegate = self
        tableVIew.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as! TableViewCell
        let model = news[indexPath.row]
        cell.display(item: model)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.info = news[indexPath.row].name
        secondVC.name = news[indexPath.row].desctript
        secondVC.image = news[indexPath.row].image
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
