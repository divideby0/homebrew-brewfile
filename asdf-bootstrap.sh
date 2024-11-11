#!/usr/bin/env sh

set -o xtrace
trap ":" ERR 

asdf plugin-add argo
asdf install argo 3.3.8
asdf install argo 3.4.4
asdf install argo 3.5.12
asdf global argo 3.5.12

asdf plugin-add awscli
asdf install awscli 2.9.17
asdf install awscli latest
asdf global awscli latest

asdf plugin-add golang
asdf install golang 1.19.5
asdf install golang latest
asdf global golang latest

# broken(darwin): asdf plugin-add goss

asdf plugin-add helm
# broken(arm64): asdf install helm 2.17.0
asdf install helm 3.11.0
asdf install helm latest
asdf global helm latest

asdf plugin-add k9s
asdf install k9s 0.25.21 || 
asdf install k9s 0.26.7
asdf install k9s latest
asdf global k9s latest

asdf plugin-add krew
asdf install krew 0.4.3
asdf install krew latest
asdf global krew latest

asdf plugin-add kubie
asdf install kubie 0.19.1
asdf install kubie latest
asdf global kubie latest

asdf plugin-add eksctl
asdf install eksctl 0.126.0
asdf install eksctl latest
asdf global eksctl latest

asdf plugin-add java
asdf install java openjdk-23
asdf install java graalvm-community-23.0.1
asdf install java oracle-graalvm-22
asdf global java openjdk-23

asdf plugin-add kfilt https://github.com/feniix/asdf-kfilt.git
asdf install kfilt 0.0.7
asdf install kfilt latest
asdf global kfilt latest

asdf plugin-add kops
asdf install kops v1.25.3
asdf install kops latest
asdf global kops latest

asdf plugin-add kubectl
asdf install kubectl 1.24.2
asdf install kubectl 1.26.1
asdf install kubectl latest
asdf global kubectl latest

asdf plugin-add kubectx
asdf install kubectx 0.9.4
asdf install kubectx latest
asdf global kubectx latest

asdf plugin-add kustomize
asdf install kustomize 4.5.5
asdf install kustomize 4.5.7
asdf install kustomize latest
asdf global kustomize latest

asdf plugin-add velero
asdf install velero 1.10.1
asdf install velero latest
asdf global velero latest

asdf plugin-add ruby
asdf install ruby 2.7.7
asdf install ruby 3.2.0
asdf install ruby latest
asdf global ruby latest

asdf plugin-add nodejs
asdf install nodejs 16.20.2
asdf install nodejs 18.20.4
asdf install nodejs 19.9.0
asdf install nodejs 20.18.0
asdf install nodejs 22.11.0
asdf install nodejs latest
asdf global nodejs 22.11.0

asdf plugin-add pnpm
asdf install pnpm 7.25.1
asdf install pnpm latest
asdf global pnpm latest

asdf plugin-add python
asdf install python 3.6.15
asdf install python 3.7.16
asdf install python 3.8.16
asdf install python 3.9.16
asdf install python 3.10.9
asdf install python 3.11.1
asdf install python latest
asdf global python latest

asdf plugin-add rust
asdf install rust 1.66.1
asdf install rust latest
asdf global rust latest

asdf plugin-add ruby
asdf install ruby 2.7.7
asdf install ruby 3.2.0
asdf install ruby latest
asdf global ruby latest

asdf plugin-add skaffold
asdf install skaffold 2.0.5
asdf install skaffold latest
asdf global skaffold latest

asdf plugin-add sops
asdf install sops 3.7.3
asdf install sops latest
asdf global sops latest

asdf plugin-add stern
asdf install stern 1.21.0
asdf install stern 1.22.0
asdf install stern latest
asdf global stern latest

asdf plugin-add terraform
asdf install terraform 1.2.4
asdf install terraform 1.3.7
asdf install terraform latest
asdf global terraform latest

asdf plugin-add terragrunt
asdf install terragrunt 0.43.0
asdf install terragrunt latest
asdf global terragrunt latest

asdf plugin-add yarn
asdf install yarn 1.22.19
asdf install yarn latest
asdf global yarn latest

asdf plugin add deno
asdf install deno 1.46.3
asdf install deno 2.0.5
asdf global deno 2.0.5

asdf plugin add aws-iam-authenticator
asdf install aws-iam-authenticator 0.5.9
asdf install aws-iam-authenticator latest
asdf global aws-iam-authenticator latest

asdf plugin add gcloud
asdf install gcloud latest
asdf global gcloud latest

asdf plugin add gradle
asdf install gradle latest
asdf global gradle latest

asdf plugin add heroku-cli
asdf install heroku-cli latest
asdf global heroku-cli latest

asdf plugin add nomad
asdf install nomad latest
asdf global nomad latest

asdf plugin add poetry
asdf install poetry latest
asdf global poetry latest