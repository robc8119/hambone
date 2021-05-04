resource storageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'toylaunchstorage'
  location: 'eastus'
  sku: {
    name:'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'toy-product-launch-plan'
  location: 'eastus'
  sku: {
    name: 'F1'
    tier: 'free'
  }
}
resource appServiceApp 'Microsoft.Web/sites@2020-12-01' = {
  name: 'toy-product-launch-1'
  location: 'eastus'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}
