#!/usr/bin/env bash

set -e

asdf plugin add argo || true
asdf plugin add goss || true
asdf plugin add helm || true
asdf plugin add k9s || true
asdf plugin-add kfilt https://github.com/feniix/asdf-kfilt.git || true
asdf plugin add kubectl || true
asdf plugin add kustomize || true
asdf plugin add nodejs || true
asdf plugin add rust || true
asdf plugin add skaffold || true
asdf plugin add sops || true
asdf plugin add stern || true
asdf plugin add terraform || true
  
# asdf plugin add kubefwd | true