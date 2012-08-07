package body BTree is

	-- Initializes a BTree structure node 
	-- Params:
	-- 	T == Access Type to Node (BTree)
	-- 	M == Minimization Factor of btree
	-- 	K == Initial Key
	procedure Initialize_Tree(T : in out BTree; M : Integer; K : Integer) is 
		N : Node; 
	begin
		Put_Line("Initializing BTree...");
		N := new Node'(M, K, NULL, NULL, NULL);
	end Initialize_Tree; 
end BTree;
