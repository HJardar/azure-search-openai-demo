metadata description = 'Creates an Azure storage account.'
param name string
param scope string


resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' existing = {
  name: name
  scope: resourceGroup(scope)
}
output name string = storage.name
output primaryEndpoints object = storage.properties.primaryEndpoints
