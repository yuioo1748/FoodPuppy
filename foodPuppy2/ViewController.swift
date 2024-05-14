//
//  ViewController.swift
//  foodPuppy2
//
//  Created by 解庚霖 on 2024/5/9.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var gifWeb: WKWebView!
    @IBOutlet weak var gifWeb2: WKWebView!
    
    
    @IBOutlet weak var hotShop1: UIButton!
    @IBOutlet weak var hotShop2: UIButton!
    @IBOutlet weak var hotShop3: UIButton!
    @IBOutlet weak var hotShop4: UIButton!
    @IBOutlet weak var hotShop5: UIButton!
    @IBOutlet weak var hotShop6: UIButton!
    @IBOutlet weak var hotShop7: UIButton!
    @IBOutlet weak var hotShop8: UIButton!
    @IBOutlet weak var hotShop9: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        overrideUserInterfaceStyle = .light
        // 取得螢幕的尺寸
        let fullSize = UIScreen.main.bounds.size

        // 設置底色
        self.view.backgroundColor = UIColor.white
        
        // Load the URL for optimized web view performance.
        guard let url = URL(string: "https://cdn.clickme.net/gallery/527ba2f8cb8384f041593eae0d26c5cb.gif") else { return }
        let request = URLRequest(url: url)
        gifWeb.load(request)
        
        // disable scroll on touch
        gifWeb.scrollView.isScrollEnabled = false
        gifWeb.scrollView.bounces = false
        
        // Load the URL for optimized web view performance.
        guard let url2 = URL(string: "https://pic.newrank.cn/mmbiz_gif/dWDqLbRCSMP46aiayNcxhOVGUwPdmucFdBW9SISjjKPntWm4pGicu3uraeFcG0PqSZcbRQSNoHTrYhIqKgtR6cpA/640?wx_fmt=gif&from=appmsg") else { return }
        let request2 = URLRequest(url: url2)
        gifWeb2.load(request2)
        
        // disable scroll on touch
        gifWeb2.scrollView.isScrollEnabled = false
        gifWeb2.scrollView.bounces = false
    
    }

    
    @IBAction func goHShop1(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
        
    }
    
    @IBAction func goHShop2(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop3(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop4(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop5(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func goHShop6(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop7(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop8(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    @IBAction func goHShop9(_ sender: Any) {
        
        let vc = OneShopViewController()
        
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.present(vc, animated: false, completion: nil)
        
    }
    
    
    
    

}

