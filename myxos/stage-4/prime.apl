decl
	integer n;
enddecl
integer main()
{
	integer number,index,flag;
	print ("Enter the value of n:");
	read (n);
	number=2;
	while (number <= n) do
		index = 2;
		flag = 0;
		while( index < number) do
			if(number % index == 0) then
				flag= 1;
				break;
			endif;
				index = index + 1;
		endwhile;
		if(flag == 0) then
			print (number);
		endif;				
		number = number + 1;
	endwhile;
	return 0;
}

