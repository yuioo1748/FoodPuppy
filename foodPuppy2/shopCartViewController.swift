//
//  shopCartViewController.swift
//  foodPuppy2
//
//  Created by 解庚霖 on 2024/5/14.
//
import UIKit

class shopCartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTableView : UITableView?
    
    @IBOutlet weak var goBackButton: UIBarButtonItem!
    
    var cartDic: [String: [Int]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // 取得螢幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size
        
        // 建立 UITableView 並設置原點及尺寸
        myTableView = UITableView(frame: CGRect(
          x: 0, y: 100,
          width: fullScreenSize.width,
          height: fullScreenSize.height - 20),
                                      style: .grouped)

        // 註冊 cell
        myTableView?.register(
          UITableViewCell.self, forCellReuseIdentifier: "Cell")

        // 設置委任對象
        myTableView?.delegate = self
        myTableView?.dataSource = self

        // 分隔線的樣式
        myTableView?.separatorStyle = .singleLine

        // 分隔線的間距 四個數值分別代表 上、左、下、右 的間距
        myTableView?.separatorInset =
        UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)

        // 是否可以點選 cell
        myTableView?.allowsSelection = true

        // 是否可以多選 cell
        myTableView?.allowsMultipleSelection = false

        // 加入到畫面中
        self.view.addSubview(myTableView!)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //返回鍵
    @IBAction func goBackAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion:nil)
        
    }
    
    //接收資料
    func setFoodInfo(dic: [String: [Int]]){
        
        cartDic = dic
        
    }
    
    // 必須實作的方法：每一組有幾個 cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cartDic.count
        
    }
    
    // 必須實作的方法：每個 cell 要顯示的內容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        // 取得 tableView 目前使用的 cell
            let cell =
        tableView.dequeueReusableCell(
            withIdentifier: "Cell", for: indexPath) as
                UITableViewCell
        
        let allfood = cartDic.keys
        
        var totalPrice = 0
        var totalNum = 0
        
        let a = Array(allfood)[indexPath.row]
        var tempArray:[Int] = cartDic[a]!
            totalPrice += tempArray[0] * tempArray[1]
            totalNum += tempArray[1]
            // 顯示的內容
            if let myLabel = cell.textLabel {
                
                myLabel.text =
                "\(tempArray[1])      \(a)     \(tempArray[0] * tempArray[1])"
       
            }
            return cell
        }

    // 删除函数
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           
            let allfood = cartDic.keys
            
            let a = Array(allfood)[indexPath.row]
         
            
            if editingStyle == .delete {
                // 实现这个方法后即出现左滑删除框
                cartDic.removeValue(forKey: a)
//                tableView.reloadData()
//                //更新视图
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
 
    // 設置 cell 的高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
