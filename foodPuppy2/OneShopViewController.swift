//
//  OneShopViewController.swift
//  foodPuppy2
//
//  Created by 解庚霖 on 2024/5/12.
//

import UIKit

class OneShopViewController: UIViewController {

    
    @IBOutlet weak var goBack: UIButton!
    
    @IBOutlet weak var hFood1: UIButton!
    @IBOutlet weak var hFood2: UIButton!
    @IBOutlet weak var hFood3: UIButton!
    @IBOutlet weak var hFood4: UIButton!
    @IBOutlet weak var hFood5: UIButton!
    @IBOutlet weak var hFood6: UIButton!
    
    @IBOutlet weak var showTotalPrice: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var itemCountLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 取得螢幕的尺寸
        let fullSize = UIScreen.main.bounds.size

        // 設置底色
        self.view.backgroundColor = UIColor.white
        
        if totalPrice == 0{
            
            self.showTotalPrice.isHidden = true
            
        }
        
        self.buttonView.layer.cornerRadius = 10
        
        
        self.itemCountLabel.layer.cornerRadius = 16
        self.itemCountLabel.layer.borderWidth = 1
        self.itemCountLabel.layer.borderColor = UIColor.white.cgColor
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector (self.goCart (_:)))
        self.buttonView.addGestureRecognizer(gesture)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func goBackAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion:nil)
        
    }
    
    @objc func goCart(_ sender:UITapGestureRecognizer){
        // do other task
        
        let vc = shopCartViewController()
        
        self.present(vc, animated: false, completion: nil)
    }
    
    var totalPrice = 0
    var itemNum = 0
    
    
    func calculatePrice(price:Int) {
        
        totalPrice = totalPrice + price
        itemNum += 1
        
        if totalPrice != 0{
            
            self.showTotalPrice.isHidden = false
            self.itemCountLabel.text = "\(itemNum)"
            
            if itemNum < 100 {
                
                self.itemCountLabel.text = "\(itemNum)"
                
            }else{
                
                self.itemCountLabel.text = "99+"
                
            }
            
            self.priceLabel.text = "$ \(totalPrice)"
            
        }
    }
    
    
    
    @IBAction func hFPrice1(_ sender: Any) {
        
        let price = 175
        
        calculatePrice(price: price)
        
    }
    
    @IBAction func hFPrice2(_ sender: Any) {
        
        let price = 241
        
        calculatePrice(price: price)
        
    }
    
    @IBAction func hFPrice3(_ sender: Any) {
        
        let price = 241
        
        calculatePrice(price: price)
        
    }
    
    @IBAction func hFPrice4(_ sender: Any) {
        
       let price = 175
        
        calculatePrice(price: price)
        
    }
    
    @IBAction func hFPrice5(_ sender: Any) {
        
        let price = 175
        
        calculatePrice(price: price)
        
    }
    
    @IBAction func hFPrice6(_ sender: Any) {
        
        let price = 203
        
        calculatePrice(price: price)
        
    }
    

    
}
