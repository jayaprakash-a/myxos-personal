decl
	integer returnValue;
enddecl
integer main()
{
	returnValue = Create("create_file_syscall.dat");
	print(returnValue);
	return 0;
}
