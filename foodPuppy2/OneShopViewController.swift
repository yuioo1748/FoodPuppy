//
//  OneShopViewController.swift
//  foodPuppy2
//
//  Created by 解庚霖 on 2024/5/12.
//

import UIKit

class OneShopViewController: UIViewController, CartDelegate {
    
    func dicFromCart(dic: [String : [Int]]) {
    
        cartDic = dic
        
        showPrice()
        
    }
    

    
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
    
    var cartDic: [String: [Int]] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 取得螢幕的尺寸
        _ = UIScreen.main.bounds.size

        // 設置底色
        self.view.backgroundColor = UIColor.white
        

            
        self.showTotalPrice.isHidden = true
            
 
        
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
        
        vc.setFoodInfo(dic: cartDic)
        vc.delegate = self // 由我(PageA)來代理你(PageB)
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
    }
    
    func calculatePrice(price:Int, fName:String) {
        
        if cartDic[fName] == nil
        {
            
            cartDic[fName] = [price, 1]
 
        }
        else
        {
            
            let tempArray:[Int] = cartDic[fName]!
            cartDic[fName] = [price, tempArray[1] + 1]
            
        }
        
        showPrice()
        
    }
    
    func showPrice(){
        
        let allfood = cartDic.keys
        var totalPrice = 0
        var totalNum = 0
        
        for food in allfood
        {
            
            let tempArray:[Int] = cartDic[food]!
            totalPrice += tempArray[0] * tempArray[1]
            totalNum += tempArray[1]
            
        }

        
        if totalPrice != 0{
            
            self.showTotalPrice.isHidden = false
            self.itemCountLabel.text = "\(totalNum)"
            
            if totalNum < 100 {
                
                self.itemCountLabel.text = "\(totalNum)"
                
            }else{
                
                self.itemCountLabel.text = "99+"
                
            }
            
            self.priceLabel.text = "$ \(totalPrice)"
            
        }
        else
        {
            
            self.showTotalPrice.isHidden = true
        }
        
        
    }
    
    
    @IBAction func hFPrice1(_ sender: Any) {
        
        let price = 175
        let fName = "醬爆牛肉片套餐"
        calculatePrice(price: price, fName: fName)
        
    }
    
    @IBAction func hFPrice2(_ sender: Any) {
        
        let price = 241
        let fName = "香煎雞排套餐"
        
        calculatePrice(price: price, fName: fName)
        
    }
    
    @IBAction func hFPrice3(_ sender: Any) {
        
        let price = 241
        let fName = "醬爆沙朗牛肉套餐"
        
        calculatePrice(price: price, fName: fName)
        
    }
    
    @IBAction func hFPrice4(_ sender: Any) {
        
       let price = 175
       let fName = "醬爆雞柳條套餐"
        
        calculatePrice(price: price, fName: fName)
        
    }
    
    @IBAction func hFPrice5(_ sender: Any) {
        
        let price = 175
        let fName = "醬爆豬肉片套餐"
        
        calculatePrice(price: price, fName: fName)
        
    }
    
    @IBAction func hFPrice6(_ sender: Any) {
        
        let price = 203
        let fName = "香煎比目魚套餐"
        
        calculatePrice(price: price, fName: fName)
        
    }
    

    
}
