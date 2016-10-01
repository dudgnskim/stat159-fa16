- - -

### **2. DISCUSSION**

In this section, I will address the main bullet-point questions from Abstract.

#### **2.1. Makefile** [1]


#### **2.1.1. Role of Makefile in reproducible workflow**


#### **2.2. Git** [2]
![git](../images/git-logo.png)

Git is a most widely used modern version of _control system_ in the world. Git actively maintains open source project. Vast majority of software projects rely on Git for version control, both closed and open sources. Git is an example of Distributed Version Control System (DVCS).

#### **2.2.1. Role of Git in reproducible workflow**

As opposed to subversion (SVN), which each developer get a working copy that points back to a single central repository, Git allows each developer to get his or her own local repository that completes with a full history of commits in a distributed version control. Since creating commits create history of the workflow, it is easier for the readers, people who want to reproduce the author's work, to successfully follow the steps if shared. In addition, with Git, it is possible to pull information from the repository, and even clone the repository to one's own local repository.

#### **2.3. GitHub** [3]
![github](../images/github-logo.png)

GitHub is a code hosting platform for version control and collaboration. It lets you and others work together on projects from anywhere.

#### **2.3.1. Role of GitHub in this project**

GitHub is very essential to this project because it works as a window / door for me and other students in class to interact with people outside of one's own computer. If managed publicly, GitHub grants other people access to read and reproduce the work on the Github repo, and sometimes, people are even able to edit the work on GitHub as well. In this project, GitHub plays a role to connect faculty members to students, and connect students among students, so that we generate reproducible documents.

#### **2.4. pandoc** [4]
![pandoc](../images/pandoc-logo.png)



#### **2.4.1. Advantage of pandoc**


#### **2.5. Markdown** [5]
![markdown](../images/markdown-logo.png)



#### **2.6. Personal experience regarding project 1**


#### **2.6.1. Resources employed to get the job done**

I utilized several resources to complete this paper. Google was used to search each tools' definition and most prevalent use, and Google led to the corresponding websites, which I used to provide definition for each apparatus. Professor Sanchez's website and github repo [6] were also referenced in order to recollect the importance and reason of creating reproducible document.

#### **2.6.2. Easy parts**

Easy parts were definitely the actual coding part. Makefile coding was not as complex as I thought it would be at first, but it was absolutely fascinating to actually create my own reproducible document with only a single command.

#### **2.6.3. Challenging parts**

The most challenging parts other than troubleshooting github was, in fact, understanding which role each apparatus takes in reproducible workflow. I understand that all the reasons and their roles are covered during class; however, it was absolutely an eye-opening experience to actually put together a document using all the tools that we have learned during class. It took me some time to deeply think of the roles that each tool takes, and it was both challenging and fascinating experience to have from this project.

#### **2.6.4. Parts where I was stuck with**

The part I was stuck with for writing this paper was troubleshooting _git push_ operation error. I was experiencing unusual error in pushing the repo to my github repo with a message saying

	To https://github.com/dudgnskim/stat159-fa16.git
	 ! [rejected]        master -> master (non-fast-forward)
	error: failed to push some refs to 'https://github.com/dudgnskim/stat159-fa16.git'
	hint: Updates were rejected because the tip of your current branch is behind
	hint: its remote counterpart. Integrate the remote changes (e.g.
	hint: 'git pull ...') before pushing again.
	hint: See the 'Note about fast-forwards' in 'git push --help' for details.

Since the submission is by pushing the content with correct working directory to the github repo, I had no choice but to fix this issue. In order to resolve this issue, I tried multiple approaches including:

1. 'git pull' and 'git push'
2. Putting Makefile into .gitignore file
3. Creating 'README.md' in project folder
4. Deleting the existing local git repo, creating another local git repo, and eventually connect the new local repository with the github repository
5. Creating README.md file for the github repo
6. 'git pull'
7. Copying&Pasting the content of the 'README.md' file created from the github repo to local repo
8. git add . & git commit
9. git push -u origin master

In the end, I believe the error arose because I created a README.md file on the github repository, but clearly it was not in my local repository. Since there exists a file on the github repo, which is updated by the local repo by _git push_ command, it was only natural for the program to get confused, and throw me the error with hint messages.
 

#### **2.6.5. Most time-consuming part**

Except for the long and extensive troubleshooting that I had to experience, I invested most of my time actually writing the paper. Even though 20000 characters approximate to 6000 words, and it is essentially around 5~6 pages of paper, it is definitely not an easy task to write a paper consisting of nearly 20000 characters.

#### **2.6.6. Total time used**

For the project, I had to invest around 8 hours, mostly due to errors on pushing local repository to my web repository. Aside from the troubleshooting of '_git push_' operations, total time consumed for the project was around 4~5 hours.


