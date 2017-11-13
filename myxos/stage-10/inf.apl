integer main()
{
	print("enter apl");
	integer childpid, retval;
	print("before fork");
	childpid = Fork();
	print("childpidapl");
	print(childpid);
	//print("after fork");
	if(childpid == -2) then
		print("child");
		retval = Exec("inf.xsm");
	else
		print("else");
		while(childpid != -1) do
			print("while");
			print(childpid);
		endwhile;
	endif;

	print("retpidapl");
	print(childpid);
	return 0;
}