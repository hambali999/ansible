#!/bin/bash

# Specify the inventory file and playbook file
INVENTORY_FILE="inventory/windows_inventory.yml"
PLAYBOOK_FILE="playbooks/add_objects.yml"

# Test the playbook
ansible-playbook -i $INVENTORY_FILE --syntax-check --lint --check $PLAYBOOK_FILE

# Run the playbook
ansible-playbook -i $INVENTORY_FILE $PLAYBOOK_FILE