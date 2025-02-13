targetScope = 'resourceGroup'  
param apiManagementName string
param location string = 'East US'
param publisherEmail string
param publisherName string

resource apim 'Microsoft.ApiManagement/service@2024-05-01' = {
  name: apiManagementName
  location: location
  sku: {
    name: 'Developer'
    capacity: 1
  }
  properties: {
    publisherEmail: publisherEmail
    publisherName: publisherName
  }
}

output apimId string = apim.id
