integer main()
{
	integer a, s , n;
	s = Fork();
	print (s);
	
	if (s >= 0 && s < 32) then
		a = Wait(s);
		print ("parent");
		print (a);
	endif;
	
	if (s == -2) then
		a = Signal();
		print ("child");
		print (a);
	endif;
	
	n = 10;
	while (n > 0) do
		print(n);
		n = n-1;
	endwhile;
	return 0;
}


