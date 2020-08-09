/*
 Quick-union: Swift implementation
 Author: Andrés López Esquivel
 */

class QuickUnionUF
{
    private var id = [Int]()
    
    init(N : Int)
    {
        for i in 0...N
        {
            id.append(i)
        }
        
        print("id length : \(id.count)")
        print("id = \(id)")
    }
    
    func root(element a : Int) -> Int
    {
        var i = a
        
        while i != id[i]
        {
            i = id[i]
        }
        
        return i
    }
    
    func connected(firstElement p : Int, secondElement q : Int) -> Bool
    {
        return root(element: p) == root(element: p)
    }
    
    func union(firstElement p : Int, secondElement q : Int)
    {
        let rootP = root(element: p)
        let rootQ = root(element: q)
        
        id[rootP] = id[rootQ]
    }
  
}