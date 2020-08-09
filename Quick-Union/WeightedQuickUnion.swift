/*
 Weighted Quick-Union: Swift implementation
 Author: Andrés López Esquivel
 */

class WeightedQuickUnion
{
    var id = [Int]()
    var treeSize = [Int]()
    
    init(N : Int)
    {
        for i in 0...N
        {
            id.append(i)
            treeSize.append(1)
        }
    }
    
    func root(element a : Int) -> Int?
    {
        var i = a
        
        guard (0 <= i && i < id.count) else { return nil }
        
        while i != id[i]
        {
            i = id[i]
        }
        
        return i
    }
    
    func connected(firstElement p : Int, secondElement q : Int) -> Bool
    {
        guard let firstRoot = root(element: p), let secondRoot = root(element: q) else
        {
            return false
        }
        
        return firstRoot == secondRoot
    }
    
    func union(firstElement p : Int, secondElement q : Int)
    {
        guard let rootP = root(element: p), let rootQ = root(element: q) else { return }
        
        guard rootP != rootQ else { return }
        
        if treeSize[rootP] < treeSize[rootQ]
        {
            id[rootP] = rootQ
            treeSize[rootQ] += treeSize[rootP]
        }
        else
        {
            id[rootQ] = rootP
            treeSize[rootP] += treeSize[rootQ]
        }
    }
  
}
/*
 Quick-union: Swift implementation
 Author: Andrés López Esquivel
 */

class WeightedQuickUnion
{
    var id = [Int]()
    var treeSize = [Int]()
    
    init(N : Int)
    {
        for i in 0...N
        {
            id.append(i)
            treeSize.append(1)
        }
    }
    
    func root(element a : Int) -> Int?
    {
        var i = a
        
        guard (0 <= i && i < id.count) else { return nil }
        
        while i != id[i]
        {
            i = id[i]
        }
        
        return i
    }
    
    func connected(firstElement p : Int, secondElement q : Int) -> Bool
    {
        guard let firstRoot = root(element: p), let secondRoot = root(element: q) else
        {
            return false
        }
        
        return firstRoot == secondRoot
    }
    
    func union(firstElement p : Int, secondElement q : Int)
    {
        guard let rootP = root(element: p), let rootQ = root(element: q) else { return }
        
        guard rootP != rootQ else { return }
        
        if treeSize[rootP] < treeSize[rootQ]
        {
            id[rootP] = rootQ
            treeSize[rootQ] += treeSize[rootP]
        }
        else
        {
            id[rootQ] = rootP
            treeSize[rootP] += treeSize[rootQ]
        }
    }
  
}
