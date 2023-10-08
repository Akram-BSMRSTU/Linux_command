                                                                           Linux Command
cat /etc/passwd

•	To show userlist .

sudo useradd user1 –g 1001

•	create new user with group id 1001

 ![1st image](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/f208a7a5-1725-45e9-a616-5fcb7c8936de)

	sudo groupadd –g 1002 group1
	
•	Add new group “group1” with group id 1002

![2nd](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/0a4a3f4c-284e-4182-80e8-91feef88a3c6)

sudo usermod user1 -g 1002

•	Assign user1 in new group which id is 1002

![3](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/4094f300-4b23-492a-af2c-acf158bef89f)

mkdir {os-concepts,ubuntu-is-the-best}

•	Create multiple file in one command in home Directory.

![4](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/f37f3625-92fe-4ad0-ab87-65014b264a34)

cd os-concepts

•	To change Directory home to newly Created os-concepts

touch file1,file2

•	To create 2 file 

![5](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/2ac331db-a299-4cb8-bbd0-b5c1554a2b04)

ls –l

•	To show the permission of the file where w indicates write, r indicates Read and x indicate Execute.

![6](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/80eb44f3-3103-4172-86bf-e4c7414a8852)

To update file permissions so that the owner can read and write, the group can only read, and others have no permissions, you can use the chmod command in Linux with the following syntax
•	chmod 640 file1.txt,file2.txt
In this command:
6 represents read (4) + write (2) permissions for the owner.
4 represents read permission for the group.
0 represents no permissions for others.

![7](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/9705cdab-95d6-4a82-be46-58cf7d94e853)

sudo groupadd –g 1010 newsgroup

•	Create new group with id 1010 which name is newsgroup.

![8](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/4f1dedff-abbc-4a13-a8f3-6642ba809c6d)

To update ownership of a file to the newly created group you can use chown command.

•	sudo chown :newgroup file.txt,file2.txt

![9](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/0d837d2b-e8b1-4849-813a-5a0f51055e68)

To assign user1 to newly created group which gid is 1010

•	sudo usermod –a –G newgroup user1
![10](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/b29e7543-8912-41b2-a189-1f6e969bae6a)

To create a file named "crash.in" containing the word "crash" in different directories and then find those files using the find command, you can follow these steps:

•	echo "crash" > ~/os-concept/crash.in

•	echo "crash" > ~/ubuntu-is-the-best/crash.in
•	echo "crash" > ~/Desktop/crash.in

find ~/ -name "crash.in"

•	Use the find command to locate all instances of the file.
•	This command will search for files named "crash.in" starting from the root directory (/) and display the paths to all matching files. 

![11](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/abb09f31-9827-46b5-b529-56d950a2e561)

find ~/ -name "crash.in" -print0 | xargs -0 sed -i 's/crash/broken/g'

•	find ~/ -name "crash.in" -print0: This finds all files named "crash.in" starting from the home directory (~) and prints the file paths with null terminators (to handle filenames with spaces or special characters).

•	xargs -0 sed -i 's/crash/broken/g': This takes the output of the find command and uses xargs to execute sed on each file. The sed command (sed -i 's/crash/broken/g') replaces all occurrences of "crash" with "broken" in each file in-place.
After running this command, all instances of "crash" in the "crash.in" files within the specified directories will be replaced with "broken".

![12](https://github.com/Akram-BSMRSTU/Linux_command/assets/77913310/811ba9bb-0f94-4db9-ab5d-fa62f41c4135)















