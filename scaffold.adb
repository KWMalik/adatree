with Ada.Text_IO; use Ada.Text_IO;
with btree;

procedure scaffold is
	T : btree.BTree;
begin
	Put_Line("Adatree Scaffold: ");
	btree.Initialize_Tree(T, 2, 0);
	btree.Print_Tree(T);
end scaffold;

