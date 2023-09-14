# Bash AI Azure Assistant

A bash utility powered by Azure Cognitive Services, developed and maintained by `jaroslavmraz`. This assistant is designed to provide Azure AI service-related responses to your terminal queries.

## Overview

While built on the foundation of Azure Cognitive Services, this assistant does not execute any commands from Azure's responses directly. Instead, it delivers the results neatly within your terminal window, ensuring that you have full control over the information provided.

## 🚀 Installation

To get started with the Bash AI Azure Assistant, follow the steps below:

1. **Clone the repository from GitHub**:

   ```bash
   gh repo clone jaroslavmraz/bash-ai-azure
   ```

2. **Move the main script to your binaries folder and make it executable**:

   ```bash
   mv bash-ai-azure/azure-assist.sh /usr/bin/azure-assist
   chmod +x /usr/bin/azure-assist
   ```

3. **Environment Variable Setup**:

   The script requires the Azure AI Subscription Key. Save it in the `SUBSCRIPTION_KEY` environment variable:

   ```bash
   echo "\nSUBSCRIPTION_KEY=\"YOUR_AZURE_SUBSCRIPTION_KEY_HERE\"" >> ~/.bash_profile
   ```

   After you've added the key, either restart your terminal or refresh your profile:

   ```bash
   source ~/.bash_profile
   ```

## 🔧 Usage

Invoke the Bash AI Azure Assistant with a query:

```bash
azure-assist "Your query related to Azure AI service here"
```

For instance:

```bash
azure-assist "analyze sentiment of the following text..."
```

---

🔗 **Visit the repository on [GitHub](https://github.com/jaroslavmraz/bash-ai-azure) for more details, issues, or contributions.**

🙏 A big shoutout to everyone contributing to this project. Your support is invaluable!
