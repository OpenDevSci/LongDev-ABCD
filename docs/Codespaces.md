# LongDev-ABCD Codespace Setup Guide 🚀

Welcome to the LongDev-ABCD Codespace setup guide! This document is designed to help you navigate and effectively use GitHub Codespaces for the LongDev-ABCD project, focusing on basic R analysis and Quarto for writing-ups. It's tailored for collaborators with minimal background in Codespaces, VS Code, IDEs, development containers, Docker environments, etc.

## Understanding Codespaces and Dev Containers 🧐

Before we jump into the setup, let's clarify what Codespaces and Dev Containers are and how they benefit your development workflow:

### Dev Containers 📦
Think of Dev Containers as VS Code running inside Docker. They allow you to define a development environment with a `Dockerfile` or `docker-compose.yml`, enabling you to run your project in that environment seamlessly—both locally and in the cloud.

### Codespaces ☁️
GitHub Codespaces are Dev Containers but hosted in the cloud. Accessed through VS Code, they use Dev Containers configurations to provide a powerful, cloud-based development environment.

### Working Together 🤝
The combination of VS Code, Dev Containers, and GitHub Codespaces allows you to develop from almost anywhere, on any machine. It's perfect for standardizing development setups across a team and handling multiple repo environments efficiently.

## Getting Started with LongDev-ABCD Codespace 🌱

Accessing and using the LongDev-ABCD Codespace is straightforward and doesn't require complex setup steps.

### Accessing LongDev-ABCD Codespace 👩‍💻

To start working with the LongDev-ABCD Codespace, follow these steps:

1. Navigate to the [**LongDev-ABCD repository**](https://github.com/OpenDevSci/LongDev-ABCD) on GitHub.
2. Click on the ⬇️ **`Code` dropdown button**.
3. Select **`Open with Codespaces`** 💻.
4. Choose an existing Codespace to open or click **`New codespace`** to create a new one ✨.

Remember, Codespaces provide a fully configured development environment to help you contribute without the need to set up locally. Happy coding!

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/OpenDevSci/LongDev-ABCD?quickstart=1)

This badge is also prominently displayed at the top of our project's root README for quick access.

--

![](https://github.com/OpenDevSci/LongDev-ABCD/blob/dev/img/Codespace_Example.gif)


---




### Using the Codespace 🖥

- **Environment Ready**: The Codespace comes pre-configured for R analysis and Quarto, allowing you to dive straight into your work.
- **Seamless Development**: Start scripting in R or drafting in Quarto without worrying about setting up dependencies—they're all taken care of.

### Continuous Integration Workflows 🔄

Leverage Codespaces to streamline your continuous integration workflows, ensuring that your development environment closely mirrors production settings for more reliable testing.

## Development Container Configuration 🛠

This repository is equipped with a Development Container configuration suitable for both Dev Containers and GitHub Codespaces.

- **For Local Use**: Utilize the **Dev Containers: Clone Repository in Container Volume...** command in VS Code for optimal performance.
- **Quick Start**: If you've got VS Code and Docker, [click here](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/openresearchcollabs/LongDev-ABCD) to auto-setup everything. This process clones the repo, sets up the dev container, and gets you ready to code.

## Seeking Help 🆘

Encountering setup issues or have questions? Don't hesitate to reach out through our project's [GitHub Discussions](https://github.com/openresearchcollabs/LongDev-ABCD/discussions) or the project's [Slack workspace](https://join.slack.com/t/fiusunlab/shared_invite/zt-2c06cewsn-umIms6iXpnKa8NPwnsf_Xg). We're here to ensure your Codespace experience is smooth and productive.
