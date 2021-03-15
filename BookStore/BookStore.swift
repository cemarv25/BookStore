//
//  BookStore.swift
//  BookStore
//
//  Created by user188731 on 3/5/21.
//

import Foundation

class BookStore {
    var bookList: [Book] = []
    var sortedBookList: [Book] = []
    
    init() {
        var newBook = Book()
        newBook.price = "$25"
        newBook.title = "A Game of Thrones"
        newBook.author = "Goerge R. R. Martin"
        newBook.description = """
            Winter is coming. Such is the stern motto of House Stark, the northernmost of the fiefdoms that owe allegiance to King Robert Baratheon in far-off King's Landing. There Eddard Stark of Winterfell rules in ...
            """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.price = "$20"
        newBook.title = "A Clash of Kings"
        newBook.author = "George R. R. Martin"
        newBook.description = """
            The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.

            """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.price = "$25"
        newBook.title = "The Way of Kings"
        newBook.author = "Brandon Sanderson"
        newBook.description = """
            Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike. Animals hide in shells, trees pull in branches, and grass retracts into the soilless ground. Cities are built only where the topography offers shelter.

            """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.price = "$20"
        newBook.title = "Words of Radiance"
        newBook.author = "Brandon Sanderson"
        newBook.description = """
            Expected by his enemies to die the miserable death of a military slave, Kaladin survived to be given command of the royal bodyguards, a controversial first for a low-status darkeyes. Now he must protect the king and Dalinar from every common peril as well as the distinctly uncommon threat of the Assassin, all while secretly struggling to master remarkable new powers that are somehow linked to his honorspren, Syl.

            """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.price = "$15"
        newBook.title = "Oathbringer"
        newBook.author = "Brandon Sanderson"
        newBook.description = """
            In Oathbringer, the third volume of the New York Times bestselling Stormlight Archive, humanity faces a new Desolation with the return of the Voidbringers, a foe with numbers as great as their thirst for vengeance.

            """
        bookList.append(newBook)
        
        sortedBookList = bookList.sorted { $0.title < $1.title }
    }
}
