
#Creating a code that will allow me to summarise my FastQC intial results 
file = "summary.txt"  #this defines what file is 

# read lines of the summary files 

f=open(file,"r")   #this opens the file 
lines=f.readlines() # will read lines 

# this creates empty lists 

pass_list=[]
function_list=[]
file_list=[]

# opens the latex_table.tex
latexfile=open('latex_table.tex' , 'w+')

# loop for each line 
 
for x in lines:
#\t means tabs therefore the command is to split each line with a tab 
	pass_list.append(x.split('\t')[0])
	function_list.append(x.split('\t')[1])
	file_list.append(x.split('\t')[2])

file_name = file_list[0].split('\n')[0]

#this closes the summary file 
f.close

#we start making the latex file 
#we start making the heading line of latex code.                                                                                                                                     
heading_ = "file"

# we then loop over each function                                                                                                                                                    
for f in function_list:
    # and we add each funciton to our latex code, seperating with &                                                                                                                  
    heading_ = heading_ + " & " + f
#finally we finish the line and then add \hline                                                                                                                                      
heading_ = heading_ + " \\\ \hline"


# we now want to make a list of the passes and fails.                                                                                                                                
results_ = file_name
for f in pass_list:
    # we loop through each results f here is "pass or fail"                                                                                                                          
    results_ = results_ + " & " + f

# we finish it off with \\\ \hline"                                                                                                                                                  
results_ = results_ + " \\\ \hline"
# latex treats _ as a special character, so we repalce this with "\_"                                                                                                                
results_ = results_.replace("_","\_")

#print this for fun                                                                                                                                                                  
#print results_                                                                                                                                                                      


latexfile.write("\\begin{sidewaystable}[]"+ '\n')
latexfile.write("\centering" + '\n')
latexfile.write("\caption{My caption}" + '\n')
latexfile.write("\label{my-label}" + '\n')
latexfile.write("\\begin{tabular}{l")
for entry in pass_list:
    latexfile.write( "|l")

latexfile.write("}" + '\n')
latexfile.write(heading_ + '\n')
latexfile.write( results_ + '\n')
latexfile.write("\end{tabular}" + '\n')
latexfile.write("\end{sidewaystable}" + '\n')

latexfile.close()
