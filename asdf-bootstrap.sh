#!/usr/bin/env sh

set +e
set -o xtrace

asdf plugin-add argo || true
asdf install argo 3.3.8 || true
asdf install argo 3.4.4 || true
asdf global argo 3.4.4 || true

asdf plugin-add goss || true
# broken(arm64): asdf install goss 0.3.18 || true
# broken(arm64): asdf install goss 0.3.21 || true
# broken(arm64): asdf install goss latest || true
# broken(arm64): asdf global goss latest || true

asdf plugin-add helm || true
# broken(arm64): asdf install helm 2.17.0 || true
asdf install helm 3.11.0 || true
asdf install helm latest || true
asdf global helm latest || true

asdf plugin-add k9s || true
asdf install k9s 0.25.21 || true
asdf install k9s 0.26.7 || true
asdf install k9s latest || true
asdf global k9s latest || true

asdf plugin-add cloudsql-proxy || true
asdf install cloudsql-proxy 1.33.2 || true
# broken(missing-binary): asdf install cloudsql-proxy 2.0.0 || true
# broken(missing-binary): asdf install cloudsql-proxy latest || true
asdf global cloudsql-proxy 1.33.2 || true

asdf plugin-add eksctl || true
asdf install eksctl 0.126.0 || true
asdf install eksctl latest || true
asdf global eksctl latest || true

asdf plugin-add java || true
asdf install java adoptopenjdk-11.0.17+8 || true
asdf install java graalvm-22.3.0+java11 || true
asdf install java graalvm-22.3.0+java17 || true
asdf install java graalvm-22.3.0+java19 || true
asdf install java openjdk-17 || true
asdf install java openjdk-19 || true
asdf global java openjdk-19 || true

asdf plugin-add kfilt https://github.com/feniix/asdf-kfilt.git || true
asdf install kfilt 0.0.7 || true
asdf install kfilt latest || true
asdf global kfilt latest || true

asdf plugin-add kops || true
asdf install kops v1.25.3 || true
asdf install kops latest || true
asdf global kops latest || true

asdf plugin-add kubectl || true
asdf install kubectl 1.24.2 || true
asdf install kubectl 1.26.1 || true
asdf install kubectl latest || true
asdf global kubectl latest || true

asdf plugin-add kubectx || true
asdf install kubectx 0.9.4 || true
asdf install kubectx latest || true
asdf global kubectx latest || true

# broken(no-plugin): asdf plugin add kubefwd | true

asdf plugin-add kustomize || true
asdf install kustomize 4.5.5 || true
asdf install kustomize 4.5.7 || true
asdf install kustomize latest || true
asdf global kustomize latest || true

asdf plugin-add nodejs || true
asdf install nodejs 16.15.1 || true
asdf install nodejs 16.19.0 || true
asdf install nodejs 18.9.1 || true
asdf install nodejs 19.4.0 || true
asdf install nodejs lts || true
asdf install nodejs latest || true
asdf global nodejs lts || true

asdf plugin-add pnpm || true
asdf install pnpm 7.25.1 || true
asdf install pnpm latest || true
asdf global pnpm latest || true

asdf plugin-add python || true
asdf install python 3.6.15 || true
asdf install python 3.7.16 || true
asdf install python 3.8.16 || true
asdf install python 3.9.16 || true
asdf install python 3.10.9 || true
asdf install python 3.11.1 || true
asdf install python latest || true
asdf global python latest || true

asdf plugin-add rust || true
asdf install rust 1.66.1 || true
asdf install rust latest || true
asdf global rust latest || true

asdf plugin-add skaffold || true
asdf install skaffold 2.0.5 || true
# broken(arm64) asdf install skaffold 2.2.3 || true
# broken(arm64) asdf install skaffold latest || true
asdf global skaffold 2.0.5 || true

asdf plugin-add sops || true
asdf install sops 3.7.3 || true
asdf install sops latest || true
asdf global sops latest || true

asdf plugin-add stern || true
asdf install stern 1.21.0 || true
asdf install stern 1.22.0 || true
asdf install stern latest || true
asdf global stern latest || true

asdf plugin-add terraform || true
asdf install terraform 1.2.4 || true
asdf install terraform 1.3.7 || true
asdf install terraform latest || true
asdf global terraform latest || true

asdf plugin-add terragrunt || true
asdf install terragrunt 0.19.21 || true
asdf install terragrunt 0.43.0 || true
asdf install terragrunt latest || true
asdf global terragrunt latest || true

asdf plugin-add yarn || true
asdf install yarn 1.22.19 || true
asdf install yarn latest || true
asdf global yarn latest || true