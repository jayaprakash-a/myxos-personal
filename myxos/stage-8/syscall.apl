decl
	integer status;
	integer fp;
	string word;
	string wordread;
	string filename;
	integer seek;
	integer openfile[50];
	integer opencount;
	integer n;
	integer i;
	integer fp2;
	integer choice;
	integer enter;
	integer counter;
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
		print("9 : Word count");
		print("Choice");
		read (n);
	
		if(n == 1) then
			print("Filename");
			read(filename);
			status = Create(filename);
			print(status);
		endif;
		if(n == 2) then
			print("Filename");
			read(filename);
			fp = Open(filename);
			print(fp);
			openfile[opencount] = fp;
			opencount = opencount + 1;
		endif;
		if(n == 3) then
			print("existopen");
			i = 0;
			while (i < opencount) do 
				print(openfile[i]);
				i = i + 1;
			endwhile;
			print("Enter the open file");
			read(fp2);				
			status = Close(fp2);
			
			print(status);
		endif;
		if(n == 4) then
			print("Filename");
			read(filename);
			status = Delete(filename);
			print(status);
		endif;
		if(n == 5) then
			print("choice?");
			print("1: open");
			print("2:existing");

			read(choice);
			if (choice ==1): then 
				print("Filename");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
				openfile[opencount] = fp;
				opencount = opencount + 1;
			endif;
			if (choice ==2): then 
				print("existopen");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
					i = i + 1;
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
			print("choice?");
			print("1: open");
			print("2:existing");

			read(choice);
			if (choice ==1): then 
				print("Filename");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
				openfile[opencount] = fp;
				opencount = opencount + 1;
			endif;
			if (choice ==2): then 
				print("existopen");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
					i = i + 1;
				endwhile;
				print("Enter the open file");
				read(fp);
				print("Seek");
				read(seek);
			endif;
			status = Seek(fp,seek);
			print(status);

		endif;
		if(n == 7) then
			print("choice?");
			print("1: open");
			print("2:existing");

			read(choice);
			if (choice ==1): then 
				print("Filename");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
				openfile[opencount] = fp;
				opencount = opencount + 1;
			endif;
			if (choice ==2): then 
				print("existopen");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
					i = i + 1;
				endwhile;
				print("Enter the open file");
				read(fp);
			endif;
			status = Read(fp,word);
			print("Word read is");
			print(word);
			print(status);
		endif;
		if(n == 8) then
			enter = 0;
		endif;
		if(n == 9) then
			print("choice?");
			print("1: open");
			print("2:existing");

			read(choice);
			if (choice ==1): then 
				print("Filename");
				read(filename);
				fp = Open(filename);
				print("open status is");
				print(fp);
				openfile[opencount] = fp;
				opencount = opencount + 1;
			endif;
			if (choice ==2): then 
				print("existopen");
				i = 0;
				while (i < opencount) do 
					print(openfile[i]);
					i = i + 1;
				endwhile;
				print("Enter the open file");
				read(fp);
			endif;
			print("Word?");
			read(wordread);
			status = 0;
			counter = 0;
			while(status != -1) do
				status = Read(fp, word);
				if(word == wordread) then
					counter = counter + 1;
				endif;
			endwhile;
			print("Count");
			print(counter);

			
		endif;

	endwhile;
	


		
	return 0;
}
