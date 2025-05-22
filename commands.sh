#!/bin/bash
# commands.sh — Manage workspaces and lifecycle

set -e

echo "1. Initialize Terraform"
terraform init

echo
echo "2. List existing workspaces"
terraform workspace list

echo
echo "3. Create workspaces if missing"
for ws in dev staging production; do
  if ! terraform workspace list | grep -q "$ws"; then
    terraform workspace new "$ws"
  fi
done

echo
echo "4. Apply each environment"
for ws in dev staging production; do
  echo "→ Switching to workspace: $ws"
  terraform workspace select "$ws"
  terraform apply -var-file="terraform.tfvars.$ws" --auto-approve
done

echo
echo "5. To destroy all environments, run: destroy.sh"
