# Exercise 1 - Setup and First Commit

## :bulb: Goal

Learn to configure Git, create a repository, make commits, and push to GitHub.

## 1.1 - Configuring Git

:bulb: Skip this if you've already configured Git. Check with: `git config --global user.name` and `git config --global user.email`

:pencil2: Set your name and email:

```shell
git config --global user.name "Your Name"
git config --global user.email your.name@email.com
```

### 1.1.1 - Configure the default editor (optional)

:pencil2: To use VS Code as your Git editor:

```shell
git config --global core.editor "code --wait"
```

## 1.2 - Create a git repository

:pencil2: Create a new directory called `git-workshop-files` and navigate to it in your terminal:

```shell
mkdir git-workshop-files
cd git-workshop-files
```

:bulb: **Tip**: Open VS Code from your terminal with `code .`

:pencil2: Initialize a git repository:

```shell
git init
```

You'll see: `Initialized empty Git repository in /[path]/git-workshop-files/.git/`

## 1.3 - First commit

:pencil2: Create a file called `README.md` with some text (e.g., `"Git Workshop"`).

:pencil2: Check the status:

```shell
git status
```

You'll see `README.md` under `Untracked files`.

:pencil2: Add the file to the staging area:

```shell
git add README.md
```

:pencil2: Create a commit:

```shell
git commit -m "Initial commit"
```

:pencil2: View your commit history:

```shell
git log
```

Press `q` to exit.

## 1.4 - Push to GitHub

### 1.4.1 - Authentication Setup

:bulb: You need to authenticate with GitHub. If you haven't set up SSH keys, follow these docs:
- [Check for existing SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)
- [Generate SSH key and add to agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

### 1.4.2 - Create GitHub Repository

:pencil2: Go to github.com, click your profile, then "Repositories" tab, then the green "New" button.

:pencil2: Name your repository (e.g., `git-workshop`) and click **Create repository**. Don't select any other options.

:pencil2: You'll see instructions for **"push an existing repository from the command line"**. Copy and run those commands in your terminal. They'll look like:

```shell
git remote add origin git@github.com:yourusername/git-workshop.git
git branch -M main
git push -u origin main
```

:pencil2: Your code is now on GitHub! Make a small edit to README.md on github.com (click the pencil icon), then pull the changes locally:

```shell
git pull
```

---

[:arrow_right: Go to the next exercise](../exercise-2/README.md)
