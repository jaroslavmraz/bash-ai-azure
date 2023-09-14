#!/bin/bash

# Set the endpoint URL
ENDPOINT="https://api.openai.com/v1/chat/completions"

# Extract query from the first argument
QUERY="Give be bash script for following query and return just script without other sentences: '$1'"

# Model to be used
MODEL="gpt-3.5-turbo"

# Extract max tokens from the second argument or set a default value of 100
MAX_TOKENS="${2:-100}"

# Make the API request
response=$(curl -s -X POST -H "Authorization: Bearer $OPENAI_KEY" -H "Content-Type: application/json" -d '{
  "messages": [
    {
      "role": "user",
      "content": "'"${QUERY}"'"
    }
  ],
  "model": "'$MODEL'",
  "max_tokens": '$MAX_TOKENS'
}' $ENDPOINT)

# Extract the reply from the JSON response
reply=$(echo "$response" | jq -r '.choices[0].message.content' | sed "s/'//g")

# Print the reply
echo "$reply"
