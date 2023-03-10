# RUB Yaml file
<div>
  <img src="https://user-images.githubusercontent.com/92756055/214880390-b6d03f25-6315-4ac5-a27c-3537788d4390.png"/>
  <img src="https://user-images.githubusercontent.com/92756055/214880582-42a40ce6-dd26-47c6-9661-ea7db59ff205.png"/>
</div>

# if run kubenetes in GCP Cluster
# Enter SSH IN VM and install
```
## install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
kubectl version --client
```

## install gcloud and google-cloud-sdk-gke-gcloud-auth-plugin
```
sudo apt-get install  -y apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install -y google-cloud-cli
gcloud version
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
```
## activate account
```
gcloud auth login
gcloud auth activate-service-account --project=omar-mohamed-el-sayed-project --key-file=file.json

```
## connect cluster
```
gcloud container clusters get-credentials app-cluster --zone us-central1-a    --project omar-mohamed-el-sayed-project
```
## RUB FILE YAML IN KUBENETES 
```
kubectl apply -f redis.yaml
kubectl apply -f conf.yaml
kubectl apply -f app.yaml

```
