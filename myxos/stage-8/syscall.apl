decl
	integer status;
	integer fp;
	string word;
	string wordread;
	string filename;

	integer openfile[50];
	integer opencount;
	integer n;
	integer i;
	integer fp2;
	integer choice;
	integer enter;
enddecl
integer main()
{
	enter = 1;
	opencount = 0;
	while(enter == 1) do
		print("The choices are as follows");
		print("1 : Create");
		print("2 : Open");
		print("3 : Close");
		print("4 : Delete");
		print("5 : Write");
		print("6 : Seek");
		print("7 : Read");
		print("8 : Exit");
		print("Enter the value of n:");
		read (n);
	
		if(n == 1) then
			print("Enter the name of the file");
			read(filename);
			status = Create(filename);
			print(status);
		endif;
		if(n == 2) then
			print("Enter the name of the file");
			read(filename);
			fp = Open(filename);
			print(fp);
			openfile[opencount] = fp;
			opencount = opencount + 1;
		endif;
		if(n == 3) then
			print("Have a look at open files");
			i = 0;
			while (i < opencount) do 
				print(openfile[i]);
			endwhile;
			print("Enter the open file");
			read(fp2);				
			status = Close(fp2);
			
			print(status);
		endif;
		if(n == 4) then
			print("Enter the name of the file");
			read(filename);
			status = Delete(filename);
			print(status);
		endif;
		if(n == 5) then
			print("Do you wish to open file and write or use existing one");
			print("1 : open 2 : existing open files");

			read(choice);
			if (choice ==1): then 
				print("Enter the name of the file");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
			endif;
			if (choice ==2): then 
				print("Have a look at open files");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
				endwhile;
				print("Enter the open file");
				read(fp);
			endif;
			print ("Enter the word");
			read(word);
			status = Write(fp,word);
			print(status);
		endif;
		if(n == 6) then
			print("Do you wish to open file and write or use existing one");
			print("1 : open 2 : existing open files");

			read(choice);
			if (choice ==1): then 
				print("Enter the name of the file");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
			endif;
			if (choice ==2): then 
				print("Have a look at open files");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
				endwhile;
				print("Enter the open file");
				read(fp);
			endif;
			status = Seek(fp,0);
			print(status);

		endif;
		if(n == 7) then
			print("Do you wish to open file and write or use existing one");
			print("1 : open 2 : existing open files");

			read(choice);
			if (choice ==1): then 
				print("Enter the name of the file");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
			endif;
			if (choice ==2): then 
				print("Have a look at open files");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
				endwhile;
				print("Enter the open file");
				read(fp);
			endif;
			status = Read(fp,word);
			print("Word read is");
			print(word);
		endif;
		if(n == 8) then
			enter = 0;
		endif;

	endwhile;
	


		
	return 0;
}
