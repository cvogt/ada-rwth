data Tag = Mo|Di|Mi|Do|Fr|Sa|So

data Tree t = Leaf t | Node (Tree t) (Tree t) 

xs = 1:xs

f = Di

mytree = Node (Node (Leaf 1) (Node (Leaf 1) (Leaf 2))) (Node (Leaf 2) (Leaf 5))

main = take 10 xs
tag2number Mo = 1 

depth (Leaf _) = 1
depth (Node a b) | depth(a) < depth(b) = 1 + depth(b)
                 | otherwise = 1 + depth(a)
