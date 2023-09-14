#!/bin/bash

# Set the endpoint URL - This example uses the Text Analytics API's endpoint for sentiment analysis.
# Replace with your specific Azure region and service endpoint.
ENDPOINT="https://YOUR_REGION.api.cognitive.microsoft.com/text/analytics/v3.0/sentiment"

# Extract query from the first argument
QUERY="$1"

# Azure AI Subscription Key
SUBSCRIPTION_KEY="YOUR_AZURE_AI_SUBSCRIPTION_KEY"

# Make the API request
response=$(curl -s -X POST $ENDPOINT \
-H "Ocp-Apim-Subscription-Key: $SUBSCRIPTION_KEY" \
-H "Content-Type: application/json" \
-d '{
  "documents": [
    {
      "language": "en",
      "id": "1",
      "text": "'"${QUERY}"'"
    }
  ]
}')

# Extract the sentiment result from the JSON response
sentiment=$(echo "$response" | jq -r '.documents[0].sentiment')

# Print the sentiment
echo "$sentiment"
