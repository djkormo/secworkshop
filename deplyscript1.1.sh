# show your active subscriptions
az account list -o table

# use on of your subscriptions
az account set --subscription "MyHappyDay"

# set resource group name 
rgName=sec01rg

# validate deployment 
az group deployment validate  --resource-group $rgName --template-uri https://raw.githubusercontent.com/djkormo/secworkshop/master/deploy1.1.json

# create deployment 
az group deployment create --name lab01 --resource-group $rgName --template-uri https://raw.githubusercontent.com/djkormo/secworkshop/master/deploy1.1.json



