az group create --name ai-foundry-rg --location eastus

az cognitiveservices account create --name ai-foundry-resources --resource-group ai-foundry-rg  --kind AIServices --sku S0 --location eastus --yes

az cognitiveservices account deployment create --name ai-foundry-resources --resource-group ai-foundry-rg --deployment-name gpt-4 --model-name gpt-4 --model-version "turbo-2024-04-09" --model-format OpenAI --sku-capacity "5" --sku-name "Standard"

az ml workspace create --kind hub --resource-group ai-foundry-rg --name ai_foundry_lab_hub546

az ml connection create --file AzureAIServiceConnection.yml --resource-group ai-foundry-rg --workspace-name ai_foundry_lab_hub546

az ml workspace create --kind project --hub-id /subscriptions/fd3e3786-c217-4a84-9916-cf6b736cae81/resourceGroups/ai-foundry-rg/providers/Microsoft.MachineLearningServices/workspaces/ai_foundry_lab_hub546 --resource-group ai-foundry-rg --name ai-foundry-project546

