//Author : Jayaprakash
// Stage 9 : Fork testing code
// INIT program to test fork
integer main()
{
	integer pid;
	print "Before Fork";
	pid = Fork();
	print "After Fork";
	return 0;
}
