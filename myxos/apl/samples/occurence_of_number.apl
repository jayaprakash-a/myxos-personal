decl
	integer a[100];
enddecl
integer main()
{
	integer u, i, number, v;
	print("EnterSize");
	read(u);
	i=0;
	while i<u do
		read(number);
		a[i] = number;
		i=i+1;
	endwhile;
	print("FindNum");
	read(v);
	i=0;
	while i<u do
		if a[i]==u then
			print(i);
		endif;
	i=i+1;
	endwhile;
	return 0;
}
