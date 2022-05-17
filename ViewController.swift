//
//  ViewController.swift
//  Jokenpo
//
//  Created by user218260 on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var labelJogada1: UILabel!
    @IBOutlet weak var labelJogada2: UILabel!
    
    
    

    @IBOutlet weak var labelResult: UILabel!
    
    
    @IBOutlet weak var labelPlayer: UILabel!
    @IBOutlet weak var labelDraw: UILabel!
    @IBOutlet weak var labelCPU: UILabel!
    @IBOutlet weak var viJogadas: UIView!
    
    
    
    //1 = papel, 2 = pedra, 3 = tesoura
    
    var placar1 = 0, placar2 = 0, placar3: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viJogadas.isHidden = true
        
        placar1 = 0
        placar2 = 0
        placar3 = 0
        
    }

    @IBAction func buttonPaper(_ sender: UIButton) {
        viJogadas.isHidden = false
        
        labelJogada1.text = "Papel"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1{
            labelJogada2.text = "Papel"
            labelResult.text = "Empate!"
            placar3+=1
            labelDraw.text = String (placar3)
        }
        else if random == 2{
            labelJogada2.text = "Pedra"
            labelResult.text = "Vitória!"
            placar1+=1
            labelPlayer.text = String (placar1)
        }
        else {
            labelJogada2.text = "Tesoura"
            labelResult.text = "Derrota!"
            placar2+=1
            labelCPU.text = String (placar2)
        }
    }

    
    @IBAction func buttonStone(_ sender: UIButton) {
        viJogadas.isHidden = false
        
        labelJogada1.text = "Pedra"
        
        var random: Int
        random = Int.random(in: 1...3)
        
        if random == 1{
            labelJogada2.text = "Papel"
            labelResult.text = "Derrota!"
            placar2+=1
            labelCPU.text = String (placar2)
        }
        else if random == 2{
            labelJogada2.text = "Pedra"
            labelResult.text = "Empate!"
            placar3+=1
            labelDraw.text = String (placar3)
        }
        else{
            labelJogada2.text = "Tesoura"
            labelResult.text = "Vitória!"
            placar1+=1
            labelPlayer.text = String(placar1)
        }
    }
    @IBAction func buttonScissor(_ sender: UIButton) {
        viJogadas.isHidden = false
        
        labelJogada1.text = "Tesoura"
        
        var random: Int
        random = Int.random(in: 1...3)
        if random == 1{
            labelJogada2.text = "Papel"
            labelResult.text = "Vitòria!"
            placar1+=1
            labelPlayer.text = String (placar1)
        }
        else if random == 2{
            labelJogada2.text = "Pedra"
            labelResult.text = "Derrota!"
            placar2+=1
            labelCPU.text = String (placar2)
        }
        else{
            labelJogada2.text = "Tesoura"
            labelResult.text = "Empate!"
            placar3+=1
            labelDraw.text = String(placar3)
        }
    }
   
}


