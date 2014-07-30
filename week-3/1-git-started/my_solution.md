## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
git add lets you add whatever file you need to what I think of as a loading dock, then you can see clearly what files you are going to push using the git commit function

#### branch
git branch  tells you what branch you are in 

#### checkout
git checkout {branch} lets you switch between branches
 
#### clone
git clone allows you to clone a repository into a new directory

#### commit
git commit tells you what you will be pushing to your repository

#### fetch
git fetch lets you download objects and refs from another repository

#### log
shows you a log of all your commits 


#### merge
allows you to join two (or more) deevelopment histories together

#### pull
lets you pull data down from a repository

#### push
lets you push to the repository of your choice (you must enter username and pw)

#### reset
this resets the current HEAD to the specified state (i.e. blank)
#### rm
removes a directory/file from the "loading dock"

#### status
shows what different files will be pushed if we were to git commit 


## Release 4: Git Workflow

- Push files to a remote repository
		git add [file]
		git commit -a
		git push 
- Fetch changes
		git pull [name of repository]
- Commit locally
		git commit -a


## Release 5: Errors you encountered
1. Error
	a> merge error, cannot pull because new file found on local repository that does not match what is online repository
2. Solution
	b> delete the local file with changes, then pull 
3. Cause (explain the error)
	c> writing a file with the same name as something that already exists online 

## Release 6: Reflection
	I had been using the terminal all along instead of the app so I did not find this section very useful. That said I did still learn a few new things so I don't see it as a waste of time. I am still struggling to understand when to use the "branch" functionality of git. I think this will come up more when I start actual coding but for now I make HTML and CSS files by downloading them and opening them in sublime to tweak them so I haven't used branches yet. Hope to come across that soon. 

