# Exercise 3 - Pull Requests on GitHub

## :bulb: Goal

Learn to create Pull Requests (PRs), review code, and merge changes on GitHub.

## 3.1 - Create a Pull Request

:pencil2: Create a new branch with a name of your choice:

```shell
git checkout -b my-new-feature
```

:pencil2: Create or modify a file, then commit it:

```shell
git add .
git commit -m "Add new feature"
```

:pencil2: Push your branch to GitHub:

```shell
git push --set-upstream origin my-new-feature
```

:bulb: After pushing, you'll get a link in your terminal to create a PR. Alternatively, go to your repository on GitHub and click the green "Compare & pull request" button.

:pencil2: Fill in the PR form with a title and description explaining your changes. Click "Create pull request".

## 3.2 - Review and Merge

:pencil2: Explore the PR interface:
- Go to the **Files changed** tab to see your changes
- Click the `+` icon next to a line number to add a comment
- Write a comment and submit your review

:bulb: In a real project, someone else would review your PR. For practice, you can review your own.

:pencil2: Go to the **Conversation** tab and scroll to the bottom. Click the green **"Merge pull request"** button, then **"Confirm merge"**.

:bulb: After merging, GitHub will offer to delete the branch. It's good practice to delete merged branches to keep your repository clean.

:pencil2: Delete the branch on GitHub by clicking the "Delete branch" button.

:pencil2: Pull the changes to your local `main` branch and delete the local feature branch:

```shell
git checkout main
git pull
git branch -d my-new-feature
```

---

**Gratulerer! 🎉 You've completed the Git workshop!**

You now know how to:
- Set up Git and configure it
- Create repositories locally and on GitHub
- Make commits and push changes  
- Work with branches and resolve merge conflicts
- Create and merge Pull Requests

Keep practicing these skills in your projects!
