//
//  ProfileViewController.swift
//  CowrywiseApp
//
//  Created by Decagon on 11.5.21.
//

import UIKit

class ProfileViewController: UIViewController {
    var headerView: TableHeader!
    var models = [Model]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(ProfileTableViewCell.self, forCellReuseIdentifier: "cell")
        table.register(TableHeader.self, forHeaderFooterViewReuseIdentifier: "header")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        fetchProfileData { (profiles) in
                print(profiles.dateOfBirth)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .systemBlue
    }
    
    func setUpView(){
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        models.append(Model(profile: "", placeholder: ""))
        models.append(Model(profile: "Firstname", placeholder: "aries"))
        models.append(Model(profile: "Lastname", placeholder: "prime"))
        models.append(Model(profile: "Username", placeholder: "@user87421"))
        models.append(Model(profile: "Gender", placeholder: "Gender"))
        models.append(Model(profile: "Date of birth", placeholder: "Date of birth"))
        models.append(Model(profile: "Next of kin", placeholder: "Next of kin"))
        
    }
    
    func fetchProfileData(completionHandler: @escaping (Profile) -> Void) {
        let url = URL(string: "https://609908f199011f001713ffb0.mockapi.io/api/v1/profile/2")!
        let _: Void = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return}
            
            do{
                let profileData = try JSONDecoder().decode(Profile.self, from: data)
                completionHandler(profileData)
            }
            catch{
                let error = error
                print(error)
            }
        }.resume()
    }

}




//MARK:- UITableViewDataSource methods
extension ProfileViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProfileTableViewCell else {fatalError("Unable to create cell")}
        cell.profileLabel.text = models[indexPath.row].profile
        cell.placeHolderLabel.text = models[indexPath.row].placeholder
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}




//MARK:- UITableViewDelegate methods
extension ProfileViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
