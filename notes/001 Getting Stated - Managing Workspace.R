#' Managing your R Workspace
#' - Object Management
#' - File Management
#' - Memory Management

# Create a few objects
df <- read.csv(
  file = "data/NHIS_2007_CSV.csv"
)

x <- 1
y <- 2

# ls() list all objects in your environment
ls()

# list.files() - list all the files located on your working directory
list.file()

# remove
rm(x)
rm(y,df)
rm(x,y,df,sadsadfadsf)

################################################################################
# Session and version informaiton

# sessionInfo() info about this R session
sessionInfo()

# R.version - gives detailed information about the particular version f R you are working in
R.version

################################################################################
#' Memory management

# memory.size() - amount of memory used by R
memory.size() #size in Mb currently

# memory.limit() - amount of memory R has access to, in MB
memory.limit()  

# memory.limit(size = NA)
# size can be set to a value, that now limits R's memory usage. 

# how much additional memory do I have access to ?
memory.limit() - memory.size()

# object.size(x)
# returns the size an object takes in memory
object.size(df)
object.size(x)

# memory.profile() - a detailed picture of your memory usage. 
memory.profile()

# garbage collection
# gc is a process, as objects in memory were removed, 
# or disconnected from assignment name, they remain in memory
# until garbage collection 
# gc() initiates the garbage collector which causes R to free memory from 
# objects no longer used.
gc()



