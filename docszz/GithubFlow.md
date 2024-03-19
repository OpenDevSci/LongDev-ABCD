# GitHub Flow for LongDev-ABCD Contributors 🔄

Welcome to the detailed guide on using GitHub Flow within the LongDev-ABCD project. This workflow facilitates smooth collaboration and regular deployment of updates. Whether you're new to GitHub or an experienced developer, this guide will help you navigate our project's contribution process effectively.

## Table of Contents

1. [Creating a Branch](#creating-a-branch)
2. [Adding Commits](#adding-commits)
3. [Opening a Pull Request](#opening-a-pull-request)
4. [Discussing and Reviewing Changes](#discussing-and-reviewing-changes)
5. [Deploying Changes](#deploying-changes)
6. [Merging to Main](#merging-to-main)
7. [Github Flow with VScode](##github-flow-with-vscode)

## Creating a Branch

Branches allow us to work on features, fixes, or other updates in isolation from the `main` branch, ensuring the main codebase remains stable.

- **For internal members**: Directly create a branch within the LongDev-ABCD repository.
- **For external contributors**: Create a branch in your fork of the repository.

```bash
git checkout -b feature-branch-name

```

Tip: Choose a branch name that reflects the feature or fix you're working on.

## Adding Commits
Commits capture the state of your project at a point in time. Keep commits small and focused, with clear messages that explain the "what" and "why" of your changes.

```bash
git add <file(s)>
git commit -m "A descriptive message explaining the change"
```

Remember: Regular commits provide a clear history of your work and facilitate easier code review.

## Opening a Pull Request
Pull Requests (PRs) initiate discussion about your proposed changes. They are central to GitHub collaboration and a great way to get feedback.

Push your branch to GitHub.
Visit the [LongDev-ABCD repository](https://github.com/OpenDevSci/LongDev-ABCD) on GitHub.
Click "New pull request" and select your branch.
Provide a comprehensive description of your changes.

```bash
git push origin feature-branch-name
```

Tip: Link related issues in your PR description to automatically close them when the PR is merged.

## Discussing and Reviewing Changes
Once a PR is opened, team members will review your work. Stay engaged in the conversation:

Respond to comments and feedback.
Make any necessary revisions.
Update your PR based on discussions.
Remember: The goal is to improve the project and learn from each other.

## Deploying Changes
Our project automates deployments from the main branch. Once your PR is approved and merged, changes will be deployed to production.

Note: Keep an eye on the deployment process and be ready to address any post-deployment issues.

## Merging to Main
After successful review and deployment, your changes will be merged into main. We encourage deleting your feature branch post-merge to keep the repository tidy.

```bash
# Delete the branch locally
git branch -d feature-branch-name
# Delete the branch on GitHub
git push origin --delete feature-branch-name
```

Tip: Regularly sync your local main branch with the upstream repository to stay up-to-date.

## Github Flow with VScode

!!!!!!!!! Add GIFS for carrying out steps above in VScode.

Additional Resources
[Git Cheat Sheet](xxxxxx) for a quick reference to common Git commands.
[LongDev-ABCD Discussion Forum](https://github.com/OpenDevSci/LongDev-ABCD/discussions) for questions or to seek help with contributions.

We're excited to have you as a contributer!

[Back to Contributing Guide](Contributing.md)