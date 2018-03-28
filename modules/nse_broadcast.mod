#!/usr/bin/env bash

# shellcheck shell=bash

# ``````````````````````````````````````````````````````````````````````````````
# Function name: nse_broadcast()
#
# Description:
#   NSE 'broadcast' category module.
#
# Usage:
#   nse_broadcast
#
# Examples:
#   nse_broadcast
#

function nse_broadcast() {

  # shellcheck disable=SC2034
  local _FUNCTION_ID="nse_broadcast"
  local _STATE=0

  # User variables:
  # - module_name: store module name
  # - module_args: store module arguments

  export _module_show=
  export _module_help=
  export _module_opts=
  export _module_commands=

  # shellcheck disable=SC2034
  _module_variables=()

  # shellcheck disable=SC2034
  author="trimstray"
  contact="contact@nslab.at"
  version="1.0"
  description="NSE 'broadcast' category module"

  # shellcheck disable=SC2034,SC2154
  _module_cfg="${_modules}/${module_name}.cfg"

  touch "$_module_cfg"

  # shellcheck disable=SC2034,SC2154
  _module_help=$(printf "%s" "
  Module: ${module_name}

    Description
    -----------

      Scripts in this category typically do discovery of hosts not listed on the
      command line by broadcasting on the local network. Use the newtargets
      script argument to allow these scripts to automatically add the hosts they
      discover to the Nmap scanning queue.

      URL: https://nmap.org/nsedoc/categories/discovery.html

    Commands
    --------

      help                            display module help
      show    <key>                   display module or profile info
      config  <key>                   show module configuration
      set     <key>                   set module variable value
      use     <module>                reuse module (changed env)
      pushd   <key>|init|show|flush   command line commands stack

      Options:

        <key>                         key value
        <value>                       profile alias or id

")

  # shellcheck disable=SC2154
  if [[ "$_mstate" -eq 0 ]] ; then

    if [[ -e "$_module_cfg" ]] && [[ -s "$_module_cfg" ]] ; then

      # shellcheck disable=SC1090
      source "$_module_cfg"

    else

      # shellcheck disable=SC2034
      _module_variables=()

      if [[ "${#_module_variables[@]}" -ne 0 ]] ; then

        printf "_module_variables=(\"%s\")\n" "${_module_variables[@]}" > "$_module_cfg"

      fi

      _mstate=1

    fi

  else

    # shellcheck disable=SC1090
    source "$_module_cfg"

  fi

  # In the given commands you can use variables from the CLI config
  # command or the etc/main.cfg file.

  # ---------------------------------------------------------------------------------------\n

  # shellcheck disable=SC2034
  _module_commands=(\
  #
  "Performs a HEAD or GET request against either the root directory or any\n \
  optional directory of an Apache JServ Protocol server and returns the server\n \
  response headers.\n \
  \n https://nmap.org/nsedoc/scripts/ajp-headers.html;\
  ;ajp-headers;--script ajp-headers -p 8009 $_cmd_params" \
  #
  "Performs a HEAD or GET request against either the root directory or any\n \
  optional directory of an Apache JServ Protocol server and returns the server\n \
  response headers.\n \
  \n https://nmap.org/nsedoc/scripts/ajp-headers.html;\
  ;ajp-headers;--script ajp-headers -p 8009 $_cmd_params" \
  #
  "Performs a HEAD or GET request against either the root directory or any\n \
  optional directory of an Apache JServ Protocol server and returns the server\n \
  response headers.\n \
  \n https://nmap.org/nsedoc/scripts/ajp-headers.html;\
  ;ajp-headers;--script ajp-headers -p 8009 $_cmd_params" \
  #
  "Performs a HEAD or GET request against either the root directory or any\n \
  optional directory of an Apache JServ Protocol server and returns the server\n \
  response headers.\n \
  \n https://nmap.org/nsedoc/scripts/ajp-headers.html;\
  ;ajp-headers;--script ajp-headers -p 8009 $_cmd_params" \
  #
  "Performs a HEAD or GET request against either the root directory or any\n \
  optional directory of an Apache JServ Protocol server and returns the server\n \
  response headers.\n \
  \n https://nmap.org/nsedoc/scripts/ajp-headers.html;\
  ;ajp-headers;--script ajp-headers -p 8009 $_cmd_params" \
  )

  # shellcheck disable=SC2034,SC2154
  _module_show=(\
      "${module_name}" \
      "${version}" \
      "${#_module_commands[@]}" \
      "${author}" \
      "${contact}" \
      "${description}" \
      )

  # shellcheck disable=SC2034
  export _module_opts=(\
  "$_module_help")

  return $_STATE

}
