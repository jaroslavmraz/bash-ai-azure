# Bash AI Azure Assistant

A bash utility powered by Azure Cognitive Services, developed and maintained by `jaroslavmraz`. This assistant delivers Azure AI service-related responses directly to your terminal.

## Overview

While rooted in Azure Cognitive Services, this assistant is designed to display AI responses in your terminal window, without executing them. Whether you're harnessing the power of Azure's services for sentiment analysis, image recognition, or another functionality, this tool is your gateway.

## 🚀 Installation

1. **Clone the repository**:

   ```bash
   gh repo clone jaroslavmraz/bash-ai-azure
   ```

2. **Install the script**:

   ```bash
   mv bash-ai-azure/azure-assist.sh /usr/bin/azure-assist
   chmod +x /usr/bin/azure-assist
   ```

3. **Configuration**:

   There are two methods to configure the Azure endpoint and API key:

   ### Using 1Password:

   If you have the 1Password CLI (`op` command):

   - Ensure you've [installed the 1Password CLI](https://support.1password.com/command-line-getting-started/) and logged in using `op signin`.

   - Store your Azure API key and endpoint:

     ```bash
     op create item login title="Azure AI Credentials" username="Azure Endpoint" password="Your API Key" --vault="YourVaultName"
     ```

   - In the `azure-assist.sh` script, retrieve the credentials:

     ```bash
     CREDENTIALS=$(op get item "Azure AI Credentials" --vault="YourVaultName")
     ENDPOINT=$(echo $CREDENTIALS | jq -r '.details.fields[] | select(.name=="username").value')
     SUBSCRIPTION_KEY=$(echo $CREDENTIALS | jq -r '.details.fields[] | select(.name=="password").value')
     ```

   ### Manual Configuration:

   If you aren't using 1Password or prefer manual setup:

   - Open the `azure-assist.sh` script in an editor. Find and modify the line:

     ```bash
     ENDPOINT="https://YOUR_REGION.api.cognitive.microsoft.com/text/analytics/v3.0/sentiment"
     ```

     Replace `YOUR_REGION` with your specific Azure region.

   - Store the Azure API key:

     ```bash
     echo "\nSUBSCRIPTION_KEY=\"YOUR_AZURE_SUBSCRIPTION_KEY_HERE\"" >> ~/.bash_profile
     source ~/.bash_profile
     ```

## 🔧 Usage

Invoke the Bash AI Azure Assistant with:

```bash
azure-assist "Your specific query for Azure AI service"
```

For example:

```bash
azure-assist "analyze sentiment of this text..."
```

---

🔗 **For additional details, contributions, or to report issues, please visit the [official GitHub repository](https://github.com/jaroslavmraz/bash-ai-azure).**

🙏 A heartfelt thank you to all contributors and users of this project. Your feedback and support enhance the tool for everyone.

---

**Note**: When using 1Password, ensure your vault is unlocked before running the script. Depending on your setup, you might be prompted for your master password or a session token.
