# Getting Started with Git

- Concepts
- Setup
- Execution

## Concepts

- For simpliciy, while definithing these terms we'll take the perspective of you working off of your **local** workstation and uploading and downloading to a **remote** server.
- If commands are provided, they are expected to be executed from your terminal within the desired **local directory**.

### SCM

- Source Control Management

### Source Control

- Environment where shared code/files live.
- This is typically something like GitHub or GitLab.

### Gist

- Source Control library of snippets or micro-blogs.

### Project

- Source Control library driven by a VTB to maintain clear objectives and timelines.

### Local Directory

- Folder on your workstation where files are stored.
- This is also the folder where your `.git` file lives.

### Local Repository

- Cached location on your workstation where **commited** files are stored.
- This will be unique to your **local directory**.

### Remote Repository

- This is your **source control**, where your **local repository** gets uploaded to.
- Can be verified via: `git remote -v`

### Branch

- Movable location of where the code lives.
- There are typically multiple branches per repository. Here are some best-practice examples:
![branches](branches.png)
  - **[Master/Main]** - production ready; fully tested and bug free.
  - **[Develop]** - tested and ready to go into production (main); may require features of bug fixes.
  - **[Feature]** - new items being introduced to the into the code.
    - Release branches are comprised of multiple feature branches.
- The current, working branch can be verified via: `git branch`

### Clone

- Takes code from a **remote repository** and downloads it to your **local directory**.
- Executed via: `git clone`

### Stage / Index / Cache

- Takes code from  **local directory** and moves it to your **local repository** so that it can be managed (**commit** and **push**).
- Executed via: `git add`

### Commit

- Confirms and documents that all changes made to the **staged**, **local repository** code is ready to be uploaded/**pushed**.
- Executed via: `git commit -m "COMMIT MESSAGE"`

### Push

- Uploads code from the **local repository** to the **remote repository**.
- Executed via: `git push`
  
### Pull

- Download code from **remote repository** to the **local repository**.
- Executed via: 'get pull'
  
### Merge

- Taking the code from one **branch** and pushing the changes to another branch.
- This is initiated via ‘pull request’

## Setup

### Prerequisites

- Estabhlished account on a Source Control service (i.e. Gitlab/Github).
- Vistual Studio Code preinstalled on your workstation.
- If you're using a UNIX system, access to the terminal and basic understanding of commands.

### Install Git

1. Download Git to your workstation via <https://git-scm.com>
2. Install Git using the following recommended setttings:
    - Use Visual Studio Code as Git’s default editor
    - Set default branch to ‘main’
    - Git from command line and also from 3rd-party software
    - Use OpenSSL library
    - Checkout Windows-style, commit Unix-style line endings
    - Use MinTTY
    - Default pull behavior (fast-forward or merge)
    - Git Credential Manager Core
    - Enable file system caching

### Establish Git Config

1. On your workstation, open your 'user' directory:
    - `C:\Users\%USERPROFILE%` on Windows.
    - `~/` on UNIX systems.
2. Create a new file: `.gitconfig`
    - On a UNIX system this can be done on the console by typing: `nano .gitconfig`
3. Drop in the following recommended settings in to your `.gitconfig`
    - Please ensure to update the fields surrounded by open-angle brackets: `< >`
4. Save and close.

### Estblishing Connection to Source Control

In order to establish a connection between **source control** and your local workstation, you'll need to exchange secure, shared keys via SSH.

- [GitHub Guide to SSH shared keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [GitLab Guide to SSH Shared keys](google.com)

## Execution

### Establish a New, Local Directory

1. Create a new folder on your workstation.
    - Recommendation: Name the folder something meaningful based on the scope of your code. Between words, use a dash `-` instead of a space.
2. Open up Visual Studio Code and open the folder you just created.
3. Within your folder, start by creating a New File: `README.md`
4. Jump down to the terminal (`ctrl` + `~`).
    - If available, open up the `Git Bash` profile by clicking the down-arrow next to the `+` in the terminal window.
5. In the terminal CLI, ensure you are in the desired directory (`pwd`). If not, move to the correct directory (`cd`).
6. `git --verstion` to confirm your install and running version.
    - If there is no result or the result is unexpected, you may need to review your Git installation.
7. `git init` to initialize your folder into a Git repository.
    - This will create a `.git/` folder within your repository. Use `ls -la` to confirm.

### Set Branch to 'Main'

If Git was installed correctly your default branch should be `main`. If this is the case, you may skip this section. Otherwise, you may execute the following commands to covert from the `master` branch to `main`:

- `git checkout -b main` to establish and move to the `main` branch.
- `git branch -d master` will delete the `master` branch.
- `git branch` will allow you to verify current/existing branches.
