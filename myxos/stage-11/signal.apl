integer main()
{
	integer p1, p2, p3, p4;
	integer s1, s2, s3, s4;
	integer a1, a2, a3, a4, a;
	p1 = Fork();
	if (p1 == -2) then
		print ("child1");
		s1 = Exec("even.xsm");
		print (s1);
	endif;
	print (p1);
	
	a1 = Wait(p1);
	print ("Parent");
	a = Signal();
	print("END PARENT");
	return 0;
}
