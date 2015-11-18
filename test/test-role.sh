#!/usr/bin/env bash

test_role() {

  local ANSIBLE_INSTALLER_URI='https://raw.githubusercontent.com/shrikeh/ansible-virtualenv/master/init.sh';
  local ANSIBLE_VENV='.venv';
  local ANSIBLE_VERSION='v1.9.2-1';
  local ANSIBLE_CHECKOUT_PATH='./.ansible';
  local ANSIBLE_INVENTORY_FILE='./inventory';
  local ANSIBLE_PLAYBOOK='test-jumpcloud.yml';

  if [ -z "$JUMPCLOUD_CONNECT_KEY" ]; then
    echo 'You must set $JUMPCLOUD_CONNECT_KEY in your shell environment before running this';
    return 1;
  fi

  . <(curl -L --silent "${ANSIBLE_INSTALLER_URI}") \
    -d "${ANSIBLE_CHECKOUT_PATH}" \
    --branch "${ANSIBLE_VERSION}" \
    --venv "${ANSIBLE_VENV}" \
    --use-pip-version \
  ;

  ( ansible-playbook -i "${ANSIBLE_INVENTORY_FILE}" \
    "${ANSIBLE_PLAYBOOK}" \
    -u "$JUMPCLOUD_TEST_REMOTE_USER" \
    -vvvv \
    --extra-vars "jumpcloud_force_install=yes jumpcloud_x_connect_key=$JUMPCLOUD_TEST_CONNECT_KEY jc_test_ip=$JUMPCLOUD_TEST_IP" \
  );
}

test_role;
