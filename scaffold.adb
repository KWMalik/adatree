with Ada.Text_IO; use Ada.Text_IO;
with btree;

procedure scaffold is
	T : btree.BTree;
	S : btree.BTree; 
begin
	Put_Line("Adatree Scaffold: ");
	btree.Initialize_Tree(T, 2, 1);
	btree.Print_Tree(T);
	btree.Search(T, 2, S); 
	Put_Line("Found Tree: " & Integer'Image(S.Key));
end scaffold;

