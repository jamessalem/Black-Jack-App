//
//  ViewController.swift
//  Black Jack
//
//  Created by James Salem on 12/16/17.
//  Copyright © 2017 James Salem. All rights reserved.
//

import UIKit

struct Card{
    var type: String
    var suit: String
    var value: Int
    var imageName: String
}

let cardBack = "Pomegranate"

// an array of all cards in a deck
let fullDeck: Array<Card> = [Card(type: "Two",suit: "Heart", value: 2, imageName: "2H"), Card(type: "Three",suit: "Heart", value: 3, imageName: "3H"), Card(type: "Four",suit: "Heart", value: 4, imageName: "4H"), Card(type: "Five",suit: "Heart", value: 5, imageName: "5H"), Card(type: "Six",suit: "Heart", value: 6, imageName: "6H"), Card(type: "Seven",suit: "Heart", value: 7, imageName: "7H"), Card(type: "Eight",suit: "Heart", value: 8, imageName: "8H"), Card(type: "Nine",suit: "Heart", value: 9, imageName: "9H"), Card(type: "Ten",suit: "Heart", value: 10, imageName: "10H"), Card(type: "Jack",suit: "Heart", value: 10, imageName: "JH"), Card(type: "Queen",suit: "Heart", value: 10, imageName: "QH"), Card(type: "King",suit: "Heart", value: 10, imageName: "KH"), Card(type: "Ace",suit: "Heart", value: 11, imageName: "AH"), Card(type: "Two",suit: "Diamond", value: 2, imageName: "2D"), Card(type: "Three",suit: "Diamond", value: 3, imageName: "3D"), Card(type: "Four",suit: "Diamond", value: 4, imageName: "4D"), Card(type: "Five",suit: "Diamond", value: 5, imageName: "5D"), Card(type: "Six",suit: "Diamond", value: 6, imageName: "6D"), Card(type: "Seven",suit: "Diamond", value: 7, imageName: "7D"), Card(type: "Eight",suit: "Diamond", value: 8, imageName: "8D"), Card(type: "Nine",suit: "Diamond", value: 9, imageName: "9D"), Card(type: "Ten",suit: "Diamond", value: 10, imageName: "10D"), Card(type: "Jack",suit: "Heart", value: 10, imageName: "JH"), Card(type: "Queen",suit: "Diamond", value: 10, imageName: "QD"), Card(type: "King",suit: "Diamond", value: 10, imageName: "KD"), Card(type: "Ace",suit: "Diamond", value: 11, imageName: "AD"), Card(type: "Two",suit: "Spade", value: 2, imageName: "2S"), Card(type: "Three",suit: "Spade", value: 3, imageName: "3S"), Card(type: "Four",suit: "Spade", value: 4, imageName: "4S"), Card(type: "Five",suit: "Spade", value: 5, imageName: "5S"), Card(type: "Six",suit: "Spade", value: 6, imageName: "6S"), Card(type: "Seven",suit: "Spade", value: 7, imageName: "7S"), Card(type: "Eight",suit: "Spade", value: 8, imageName: "8S"), Card(type: "Nine",suit: "Spade", value: 9, imageName: "9S"), Card(type: "Ten",suit: "Spade", value: 10, imageName: "10S"), Card(type: "Jack",suit: "Spade", value: 10, imageName: "JS"), Card(type: "Queen",suit: "Spade", value: 10, imageName: "QS"), Card(type: "King",suit: "Spade", value: 10, imageName: "KS"), Card(type: "Ace",suit: "Spade", value: 11, imageName: "AS"), Card(type: "Two",suit: "Club", value: 2, imageName: "2C"), Card(type: "Three",suit: "Club", value: 3, imageName: "3C"), Card(type: "Four",suit: "Club", value: 4, imageName: "4C"), Card(type: "Five",suit: "Club", value: 5, imageName: "5C"), Card(type: "Six",suit: "Club", value: 6, imageName: "6C"), Card(type: "Seven",suit: "Club", value: 7, imageName: "7C"), Card(type: "Eight",suit: "Club", value: 8, imageName: "8C"), Card(type: "Nine",suit: "Club", value: 9, imageName: "9C"), Card(type: "Ten",suit: "Club", value: 10, imageName: "10C"), Card(type: "Jack",suit: "Club", value: 10, imageName: "JC"), Card(type: "Queen",suit: "Club", value: 10, imageName: "QC"), Card(type: "King",suit: "Club", value: 10, imageName: "KC"), Card(type: "Ace",suit: "Club", value: 11, imageName: "AC")]

var deck: Array<Card> = fullDeck

var dealerHand: Array<Card> = []
var playerHand: Array<Card> = []

class ViewController: UIViewController {
    // Start Game
    @IBOutlet weak var startBackground: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var gameView: UIView!
    
    // Middle Area
    @IBOutlet weak var Hit: UIButton!
    @IBOutlet weak var Stand: UIButton!
    
    // Dealer's Area
    @IBOutlet weak var dealerCard1: UIImageView!
    @IBOutlet weak var dealerCard2: UIImageView!
    @IBOutlet weak var dealerCard3: UIImageView!
    @IBOutlet weak var dealerCard4: UIImageView!
    @IBOutlet weak var dealerCard5: UIImageView!
    @IBOutlet weak var dealerCard6: UIImageView!
    @IBOutlet weak var dealerCard7: UIImageView!
    @IBOutlet weak var dealerCard8: UIImageView!
    @IBOutlet weak var dealerCard9: UIImageView!
    @IBOutlet weak var dealerCard10: UIImageView!
    
    // Player's Area
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var playerCard3: UIImageView!
    @IBOutlet weak var playerCard4: UIImageView!
    @IBOutlet weak var playerCard5: UIImageView!
    @IBOutlet weak var playerCard6: UIImageView!
    @IBOutlet weak var playerCard7: UIImageView!
    @IBOutlet weak var playerCard8: UIImageView!
    @IBOutlet weak var playerCard9: UIImageView!
    @IBOutlet weak var playerCard10: UIImageView!
    
    // Restart Variables
    @IBOutlet weak var restartView: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    lazy var dealerCards: Array<UIImageView> = [self.dealerCard1, self.dealerCard2, self.dealerCard3, self.dealerCard4, self.dealerCard5, self.dealerCard6, self.dealerCard7, self.dealerCard8, self.dealerCard9, self.dealerCard10]
    
    lazy var playerCards: Array<UIImageView> = [self.playerCard1, self.playerCard2, self.playerCard3, self.playerCard4, self.playerCard5, self.playerCard6, self.playerCard7, self.playerCard8, self.playerCard9, self.playerCard10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startPressed(_ sender: Any) {
        // deal
        initDeal()
        
        // fade start screen
        startButton.isHidden = true
        self.gameView.isHidden = false
        UIView.animate(withDuration: 1.0, animations:{
            self.startBackground.alpha = CGFloat(0)
        }) {(finished) in
            
        }
        
        // check if player starts with 21
        let playerScore = computeScore(hand: playerHand)
        if playerScore == 21 {
            self.playerStands()
        }
    }
    
    @IBAction func hitPressed(_ sender: Any) {
        print("hit pressed")
        
        // add card to hand
        playerTakeCard()
        
        // compute new score
        let playerScore = computeScore(hand: playerHand)
        
        // check for 21
        if playerScore == 21 {
            self.playerStands()
        }
        else if playerScore > 21 {
            // player busts
            print("player busts")
            restart(result: "lose")
            return
        }
    }
    
    @IBAction func standPressed(_ sender: Any) {
        print("stand pressed")
        playerStands()
    }
    
    @IBAction func playAgainPressed(_ sender: Any) {
        // reset images to alpha = 0
        for i in 0...(playerHand.count - 1) {
            playerCards[i].alpha = 0
        }
        for i in 0...(dealerHand.count - 1) {
            dealerCards[i].alpha = 0
        }
        
        // reset deck
        deck = fullDeck
        
        // reset hands
        playerHand.removeAll()
        dealerHand.removeAll()
        
        // get rid of resetView
        restartView.isHidden = true
        restartView.alpha = 0
        
        // call initial deal function
        initDeal()
    }
    
    func initDeal() {
        // serve players first card
        var randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        playerCard1.image = UIImage(named: deck[randomNumber].imageName)
        playerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // serve players second card
        randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        playerCard2.image = UIImage(named: deck[randomNumber].imageName)
        playerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // serve dealers first card
        randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        dealerCard1.image = UIImage(named: deck[randomNumber].imageName)
        dealerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // serve dealers second card
        randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        dealerCard2.image = UIImage(named: cardBack)
        dealerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // display cards
        UIView.animate(withDuration: 1.0, animations:{
            self.playerCard1.alpha = CGFloat(1.0)
        }){(finished) in
            UIView.animate(withDuration: 1.0, animations:{
                self.dealerCard1.alpha = CGFloat(1.0)
            }){(finished) in
                UIView.animate(withDuration: 1.0, animations:{
                    self.playerCard2.alpha = CGFloat(1.0)
                }){(finished) in
                    UIView.animate(withDuration: 1.0, animations:{
                        self.dealerCard2.alpha = CGFloat(1.0)
                    }){(finished) in
                        
                    }
                }
            }
        }
    }
    
    func playerStands(){
        // check the players score
        let playerScore = computeScore(hand: playerHand)
        print(playerScore)
        
        // dealer shows card
        var dealerScore = computeScore(hand: dealerHand)
        print(dealerScore)
        
        // show hidden card
        dealerCard2.image = UIImage(named: dealerHand[1].imageName)
        
        // check for initial tie
        if dealerScore == 21 && playerScore == 21 {
            if playerHand.count == 2 {
                // tie game
                print("tie game")
                restart(result: "tie")
                return
            }
        }
        
        // check for dealer starting with 21
        if dealerScore == 21 && playerScore != 21 {
            // dealer wins
            print("dealer wins")
            restart(result: "lose")
            return
        }
        
        // check for player starting with 21
        if dealerScore != 21 && playerScore == 22 {
            if playerHand.count == 1 {
                // player wins
                print("player wins")
                restart(result: "win")
                return
            }
        }
        
        while dealerScore < 17 {
            // dealer take card
            dealerTakeCard()
            
            // compute new score
            dealerScore = computeScore(hand: dealerHand)
            
            if dealerScore > 21 {
                // dealer busts
                print("dealer busts")
                restart(result: "win")
                return
            }
        }
        
        // compare scores
        if dealerScore > playerScore {
            // dealers wins
            print("dealer wins")
            restart(result: "lose")
        }
        else if dealerScore < playerScore {
            // player wins
            print("player wins")
            restart(result: "win")
        }
        else {
            // tie game
            print("tie game")
            restart(result: "tie")
        }
    }
    
    func playerTakeCard() {
        // pick card
        let randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        playerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // display card
        self.playerCards[playerHand.count - 1].image = UIImage(named: playerHand[playerHand.count - 1].imageName)
        UIView.animate(withDuration: 1.0, animations:{
            self.playerCards[playerHand.count - 1].alpha = CGFloat(1.0)
        }) {(finished) in
            
        }
    }
    
    func dealerTakeCard() {
        // pick card
        let randomNumber = Int(arc4random_uniform(UInt32(deck.count)))
        dealerHand.append(deck[randomNumber])
        deck.remove(at: randomNumber)
        
        // display card
        self.dealerCards[dealerHand.count - 1].image = UIImage(named: dealerHand[dealerHand.count - 1].imageName)
        UIView.animate(withDuration: 1.0, animations:{
            self.dealerCards[dealerHand.count - 1].alpha = CGFloat(1.0)
        }) {(finished) in
            
        }
    }
    
    func computeScore(hand:[Card]) -> Int{
        var score = 0
        var aceCount = 0
        // sum non-aces
        for card in hand {
            if card.type != "Ace" {
                score += card.value
            }
            else {
                aceCount += 1
            }
        }
        // add aces
        if aceCount > 0 {
            for index in 1...aceCount {
                if index == aceCount {
                    if score <= 10 {
                        score += 11
                    }
                    else {
                        score += 1
                    }
                }
                else {
                    score += 1
                }
            }
        }
        
        return score
    }
    
    func restart(result: String) {
        // Set label
        if result == "win" {
            resultLabel.text = "YOU WIN"
        }
        else if result == "lose" {
            resultLabel.text = "YOU LOSE"
        }
        else {
            resultLabel.text = "TIE"
        }
        
        // bring up "restart" view
        restartView.isHidden = false
        UIView.animate(withDuration: 2.0, animations:{
            self.restartView.alpha = 0.90
        }) {(finished) in
            // drop down the game result
            self.resultLabel.isHidden = false
            // bring in "play again" button
            self.playAgainButton.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

