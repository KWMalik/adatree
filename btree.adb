with btree; use btree;
package body BTree is

	-- Prints basic information about the head of the 
	-- tree given. 
	procedure Print_Tree(T : in BTree) is 
	begin 
		Put_Line("Node: "); 
		Put_Line("    MinFactor: " & Integer'Image(T.MinFactor)); 
		Put_Line("    Key: " & Integer'Image(T.Key)); 
	end Print_Tree; 

	-- Initializes a BTree structure node 
	-- Params:
	-- 	T == Access Type to Node (BTree)
	-- 	M == Minimization Factor of btree
	-- 	K == Initial Key
	procedure Initialize_Tree(T : in out BTree; M : Integer; K : Integer) is 
	begin
		Put_Line("Initializing BTree...");
		if M < 2 then 
			Put_Line("Minimalization Factor Must Be >= 2"); 
		else 
			T := new Node'(M, K, NULL, NULL, NULL, NULL);
		end if;
	end Initialize_Tree; 

	-- Search for Node/BTree given key value
	procedure Search(T : in BTree; I : Integer; N : out BTree) is 
	begin 
		N := T;
		iterate: -- 'Horizontal' linear search through tier
			while N.Key > T.Key and N.Next /= NULL loop
				Put_Line("Iterating Through Nodes...");
				N := N.Next;
			end loop iterate; 

			-- We have either reached the end of the nodes, 
			-- or we have come to a value higher than what 
			-- we are looking for. 
			if N.Next /= NULL then  -- We need to descend
				Search(N, I, N); 
			end if; --N will be Null if the checks have failed
	end Search; 

	-- Insert a node into the BTree
	procedure Insert(T : in out BTree; N : in BTree) is 
	begin 
		Put_Line("To be written at home."); 
	end Insert;	

end BTree;
