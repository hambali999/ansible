import os

# os
os.system('clear')
print("=== os module ===")
current_working_directory = os.getcwd()
print(current_working_directory)
- os.getcwd() #This function is used to get the location of the current working directory.
- os.chdir() #This function is used to change the current working directory (CWD) to a specified path.
- os.mkdir() #This function is used to create a directory named path with the specified numeric mode.
- os.makedirs() #This function is used to create a directory recursively.
- os.listdir() #This function is used to get the list of all files and directories in the specified directory.
- os.remove() #This function is used to remove or delete a file path.
- os.rmdir() #This function is used to remove or delete an empty directory.
- os.rename() #This function is used to rename a file.
- os.path.exists() #This function is used to check whether a file exists or not by passing the name of the file as a parameter.
- os.path.getsize() #This function is used to get the size of the file in bytes. To use this method we need to pass the name of the file as a parameter.
