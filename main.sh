#set -a
#source .env
#set +a
az group create --name rg-dev-vm2 --location westeurope
az vm create \
        --resource-group rg-dev-vm2 \
        --name vm-dev-webserver2 \
        --image Ubuntu2404 \
        --size Standard_B1s \
        --vnet-name vnet-dev-vm2 \
        --subnet subnet-dev-vm2 \
        --public-ip-address vm-dev-webserver2-ip \
        --nsg nsg-dev-vm2 \
        --nsg-rule SSH \
        --location westeurope \
        --admin-username azureuser \
        --admin-password "$ADMINPASS"
az vm open-port --port 80 --resource-group rg-dev-vm2 --name vm-dev-webserver2
