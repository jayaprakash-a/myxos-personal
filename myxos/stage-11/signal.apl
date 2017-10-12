integer main()
{
	integer p1, p2, p3, p4;
	integer s1, s2, s3, s4;
	integer a1, a2, a3, a4, a;
	p1 = Fork();
	if (p1 == -2) then
		print ("child1");
		s1 = Exec("even2.xsm");
		print (s1);
	endif;
	print (p1);
	//p2 = Fork();
	//if (p2 == -2) then
	//	print ("child2");
	//	s2 = Exec("even2.xsm");
	//	print (s2);
	//endif;
	//print (p2);
	//p3 = Fork();
	//if (p3 == -2) then
	//	print ("child3");
	//	s3 = Exec("even2.xsm");
	//	print (s3);
	//endif;
	//print(p3);
	//p4 = Fork();
	//if (p4 == -2) then
	//	print ("child4");
	//	s4 = Exec("even2.xsm");
	//	print (s4);
	//endif;
	//print (p4);

	a1 = Wait(p1);
	//a2 = Wait(p2);
	//a3 = Wait(p3);
	//a4 = Wait(p4);
	print ("Parent");
	a = Signal();
	print("END PARENT");
	return 0;
}
