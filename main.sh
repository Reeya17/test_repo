set -a
source .env
set +a
az group create --name rg-dev-vm3 --location westeurope
az vm create \
        --resource-group rg-dev-vm3 \
        --name vm-dev-webserver3 \
        --image Ubuntu2404 \
        --size Standard_B1s \
        --vnet-name vnet-dev-vm3 \
        --subnet subnet-dev-vm3 \
        --public-ip-address vm-dev-webserver3-ip \
        --nsg nsg-dev-vm3 \
        --nsg-rule SSH \
        --location westeurope \
        --admin-username azureuser \
        --admin-password "$ADMINPASS3"
az vm open-port --port 80 --resource-group rg-dev-vm3 --name vm-dev-webserver3
