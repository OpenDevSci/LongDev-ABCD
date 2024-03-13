# Contributing to LongDev-ABCD 🌟

Welcome to the LongDev-ABCD contributing guide! We're thrilled to have you join our community of researchers, developers, and contributors. This comprehensive guide outlines how you can contribute to the project, with a special focus on our collaborative workflow inspired by the [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow).

## Table of Contents
- [Getting Started 🚀](#getting-started-)
  - [For Internal Members](#for-internal-members)
  - [For External Contributors](#for-external-contributors)
  - [Setting Up Your Local Development Environment](#setting-up-your-local-development-environment)
- [Understanding GitHub Flow 🔄](#understanding-github-flow-)
  - [Workflow Overview](#workflow-overview)
  - [Creating and Using Branches](#creating-and-using-branches)
  - [Making Changes and Opening Pull Requests](#making-changes-and-opening-pull-requests)
  - [Reviewing Pull Requests](#reviewing-pull-requests)
- [GitHub Projects 🗂](#github-projects-)
- [GitHub Codespaces ☁️](#github-codespaces-)
- [Communication 📢](#communication-)
- [Reproducibility](#reproducibility)
- [Feedback and Support 📬](#feedback-and-support-)
- [Contributing Guidelines Improvements](#contributing-guidelines-improvements)

## Getting Started 🚀

Before diving into contributions, please familiarize yourself with our [project's README](README.md). It provides an essential overview of LongDev-ABCD, setting the stage for meaningful contributions.

### Internal Members

Repository Members:
1. **Clone the Repository Directly**

   To clone the repository to your local machine, use the following command in your terminal. Replace `repository-url` with the actual URL of the repository you want to clone.

   ```bash
   git clone https://github.com/your-organization/repository-url.git
   cd repository-url
   ```

2. **Create a New Branch for Changes**

   Before making any changes, it's best practice to create a new branch. This keeps your modifications organized and separate from the main branch. Replace `new-branch-name` with a descriptive name for your branch.

   ```bash
   git checkout -b new-branch-name
   ```

3. **Push the Branch to the Repository**

   After committing your changes to the new branch, push the branch to the GitHub repository. This makes your branch available to others for review and further contributions.

   ```bash
   git push origin new-branch-name
   ```

4. **Open a Pull Request for Review**

   Once your branch is pushed to GitHub, navigate to the repository page on GitHub. You'll see a prompt to "Compare & pull request" for your recently pushed branches. Click it to open a pull request.

   - Provide a title and a detailed description of your changes.
   - Mention any specific collaborators for review if necessary.
   - Submit the pull request by clicking the "Create pull request" button.

Remember, pull requests are a great way to get feedback and make your contributions more effective.

### External Contributors

For those not a repository member:
External contributors should start by forking the repository. This creates a copy of the repository in your own GitHub account, allowing you to make changes without affecting the main project until your contributions are reviewed and accepted.

1. **Fork the Repository**: Visit the [LongDev-ABCD repository](https://github.com/OpenDevSci/LongDev-ABCD) on GitHub and click the "Fork" button at the top right corner.
2. **Clone Your Fork**: Clone the forked repository to your local machine.

```bash
# Clone your fork of the repository
git clone https://github.com/yourusername/LongDev-ABCD.git
# Navigate into the repository directory
cd LongDev-ABCD
```

*Replace `yourusername` with your GitHub username.*

3. **Create a New Branch, Push Changes, and Open a Pull Request**

   Follow the same steps as for internal members above.

### Setting Up Your Local Development Environment

After cloning the repository (or your fork), set up your local development environment by installing any necessary dependencies ([see our Codespaces Setup Guide](docs/Codespaces-Setup.md)) or [use one of our prebuilt CODESPACES](https://github.com/OpenDevSci/LongDev-ABCD) (recommended).

### Creating and Using Branches

Regardless of being an internal member or an external contributor, the next step is to create a new branch for your work:

```bash
# Create a new branch for your changes
git checkout -b feature-branch-name
```

*Replace `feature-branch-name` with a descriptive name for your branch.*

This branch is where you'll make changes, commit updates, and push modifications back to the repository (or your fork) before opening a Pull Request.

For more details on making contributions, including committing changes and opening Pull Requests, refer to the [Understanding GitHub Flow](#understanding-github-flow-) section.

## Understanding GitHub Flow 🔄

GitHub Flow is a simple yet powerful branch-based workflow designed to support collaborative projects and regular deployments. At LongDev-ABCD, we embrace this workflow to streamline contributions, enhance code quality, and facilitate effective team collaboration. The process involves:

1. **Creating a branch** for new work, ensuring changes are organized and focused.
2. **Adding commits** to record your progress and document changes.
3. **Opening a Pull Request (PR)** to discuss and review your changes.
4. **Reviewing and discussing** PRs to refine the code.
5. **Deploying** changes to verify functionality in production.
6. **Merging** approved changes into the main branch for deployment.

For both external contributors and repository members, this workflow is central to participating in the project. It ensures that all contributions are reviewed, discussed, and tested before integration, maintaining the integrity and reliability of the project.

### For a Comprehensive Guide

For detailed steps, best practices, and tips on navigating our GitHub Flow, please refer to our [GitHub Flow Guide](GitHubFlow.md). This document is designed to help you understand and engage with our project's collaborative process fully.

## GitHub Projects 🗂

**Access our project board** for task management and collaboration [here](https://github.com/orgs/OpenDevSci/projects/13).

## GitHub Codespaces ☁️

**Accessing and Using Codespaces**: Start by clicking the "Open in GitHub Codespaces" badge in our [README](README.md). See our [Codespaces Setup file](/docs/Codespaces-Setup.md) for detailed instructions.

For instructions on accessing and using Codespaces, refer to our [Codespaces Setup file](docs/Codespaces-Setup.md).

## Communication 📢

We use **Slack** for quick questions and updates and **GitHub Issues and Discussions** for searchable, in-depth conversations.

## Reproducibility

We strive for reproducible analyses, including proper documentation and version control of all scripts.

## Feedback and Support 📬

Encounter an issue or have a suggestion? Open an [issue](/docs/Issues.md) for discussion or reach out in our [Slack channel](https://join.slack.com/t/fiusunlab/shared_invite/zt-2c06cewsn-umIms6iXpnKa8NPwnsf_Xg).

Thank you for contributing!

[Back to top](#table-of-contents)
