#-----------------------------------------------------------------------------------------------
=begin
Common modes for File Handling
“r” : Read-only mode for a file.
“r+” : Read-Write mode for a file.
“w” : Write-only mode for a file.
“w+” : Read-Write mode for a file.
“a” : Write-only mode, if file exists it will append the data otherwise a new file will be created.
“a+” : Read and Write mode, if file exists it will append the data otherwise a new file will be created.
=end 
#-------------------------------------------------------------------------------------------------

#Creating a file

aFile = File.new("test.txt", "r+")	#creating an object aFile so as to do file operations
File.open("test.txt", "r+") do |aFile|
=begin
	#Reading from a file test.txt
	aFile = File.new("test.txt", "r")
	if aFile
	   content = aFile.sysread(20)	#it'll read and output the fisrt 20 characters of a file named as test.txt
	   puts content
	else
	   puts "Unable to open file!"
	end

	#Writing to a file test.txt
	aFile = File.new("test.txt", "r+")
	if aFile
	   aFile.syswrite("ABCDEF")	#this "ABCDEF" will be appended in the beginning of the test.txt file
	else
	   puts "Unable to open file!"
	end

	# The each_byte method
	#This method belongs to the class File. The method each_byte is always associated with a block.
	aFile = File.new("test.txt", "r+")
	if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?* } #see this is a block to which each_byte is associated
	else
	   puts "Unable to open file!"
	end

	#The IO.readlines Method
	arr = IO.readlines("test.txt")
	puts arr[0]
	puts arr[1]

	#The IO.foreach Method (This method also returns output line by line. The difference between the method foreach and the method readlines is that the method foreach is associated with a block. However, unlike the method readlines, the method foreach does not return an array.)
	IO.foreach("test.txt"){|block| puts block}

	#Renaming and Deleting Files
	File.rename( "test.txt", "test1.txt" )

	#Deleting a to_delete.txt file
	File.delete("to_delete.txt")
	
#------------------------------File Modes and Ownership----------------------------------------

	#Use the chmod method with a mask to change the mode or permissions/access list of a file −
	file = File.new( "test.txt", "w" )
	file.chmod( 0755 )

#-----------------------------------------------------------------------------------------------

#File Inquiries	
	File.open("file.rb") if File::exists?( "file.rb" )
=end

	# The following command inquire whether the file is really a file − return true/false
	File.file?( "test.txt" ) 
#----------------------------------------------------------------------------------------------

#Directories in Ruby
=begin 
	All files are contained within various directories, and Ruby has no problem handling these too. Whereas the File class handles files, directories are handled with the Dir class.
	checkout tutorialspoint for this
=end
end

