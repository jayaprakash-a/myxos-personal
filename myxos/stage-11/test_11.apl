decl 
	integer ch, p, pp;
enddecl

integer main()
{
	p = Getpid();
	print (p);
	
	ch = Fork();
	if (ch == -2) then
		pp = Getppid();
		print ("child");
		print (pp);
	endif;
	
	return 0;
}
	
