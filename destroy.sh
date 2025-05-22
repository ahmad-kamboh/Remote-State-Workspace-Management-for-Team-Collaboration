#!/bin/bash
# destroy.sh — Destroy resources in all workspaces

set -e

for ws in dev staging production; do
  echo "→ Switching to workspace: $ws"
  terraform workspace select "$ws"
  terraform destroy -var-file="terraform.tfvars.$ws" --auto-approve
done

echo "All environments destroyed."
