#!/usr/bin/env bash

test_role() {
  local ANSIBLE_
  local ANSIBLE_INSTALLER_URI='https://raw.githubusercontent.com/shrikeh/ansible-virtualenv/master/init.sh';
  local ANSIBLE_VENV='.venv';
  local ANSIBLE_VERSION='v1.9.2-1';
  local ANSIBLE_CHECKOUT_PATH='./.ansible';
  local ANSIBLE_ROLES_FILE='./requirements.yml';
  local ANSIBLE_INVENTORY_FILE='./inventory';
  local ANSIBLE_PLAYBOOK='test.yml';
  local ANSIBLE_ROLES_LOCAL_PATH='./.roles';

  . <(curl -L --silent "${ANSIBLE_INSTALLER_URI}") \
    -d "${ANSIBLE_CHECKOUT_PATH}" \
    --venv "${ANSIBLE_VENV}" \
    --branch "${ANSIBLE_VERSION}" \
  ;
  mkdir -p "${ANSIBLE_ROLES_LOCAL_PATH}";

  ansible-galaxy install \
    -p "${ANSIBLE_ROLES_LOCAL_PATH}" \
    -r "${ANSIBLE_ROLES_FILE}" \
    --ignore-errors;

  ( export ANSIBLE_ROLES_PATH=${ANSIBLE_ROLES_LOCAL_PATH}; \
    ansible-playbook -i "${ANSIBLE_INVENTORY_FILE}" \
    "${ANSIBLE_PLAYBOOK}"
  );
}

test_role;
