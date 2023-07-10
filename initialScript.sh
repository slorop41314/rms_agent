#!/usr/bin/env bash
shopt -s expand_aliases
export skip_runner=false
export clean=false
export utilities=true
export domain=true
export data=true
export cache=true
export remote=true
export presenter=true
export platform=true
export ui=true
export translate=true
export force=false
export format=false
export module=''

function disableAll() {
  if $utilities && $domain && $data && $cache && $remote && $presenter && $ui; then
    export utilities=false
    export domain=false
    export data=false
    export cache=false
    export remote=false
    export presenter=false
    export ui=false
    export platform=false
    export translate=false
  fi
}

while test $# -gt 0; do
  case "$1" in
  -h | --help)
    echo "initialScript"
    echo " "
    echo "initialScript [options]"
    echo " "
    echo "options:"
    echo "-c,   --clean               clean project folder"
    echo "-s,   --skip-runner         skip build_runner"
    echo "-do,  --domain-only         execute domain"
    echo "-da,  --data-only           execute data"
    echo "-p,   --presenter-only      execute presenter"
    echo "-ut,  --utilities-only      execute utilities"
    echo "-ui,  --ui-only             execute ui"
    echo "-tr,  --tr-only             execute translate"
    echo "-f,   --force               force delete conflicting outputs"
    exit 0
    ;;
  -c | --clean)
    export clean=true
    shift
    ;;
  -s | --skip-runner)
    export skip_runner=true
    shift
    ;;
  -ut | --utilities-only)
    disableAll
    export utilities=true
    shift
    ;;
  -do | --domain-only)
    disableAll
    export domain=true
    shift
    ;;
  -da | --data-only)
    disableAll
    export data=true
    shift
    ;;
  -p | --presenter-only)
    disableAll
    export presenter=true
    shift
    ;;
  -ui | --ui-only)
    disableAll
    export ui=true
    shift
    ;;
  -tr | --tr-only)
    disableAll
    export translate=true
    shift
    ;;
  -f | --force)
    export force=true
    shift
    ;;
  -F | --format)
    disableAll
    export format=true
    shift
    ;;
  *)
    echo "Unknown argument ${1}"
    exit
    break
    ;;
  esac
done

if ! command -v fvm &>/dev/null; then
  echo 'Using flutter'
  alias f="flutter"
else
  echo 'Using fvm'
  fvm install
  alias f="fvm flutter"
fi

function buildRunner() {
  if $force; then
    f packages pub run build_runner build --delete-conflicting-outputs
  else
    f packages pub run build_runner build
  fi
}

function format() {
  local folderPath="$1"
  f format "$folderPath" -l 80
}

function build() {
  if $clean; then
    f clean
  fi
  f packages pub get
  if ! $skip_runner; then
    buildRunner
  fi
}

if $domain; then
  (
    cd domain || exit
    echo 'Domain'
    build
  )
fi

if $data; then
  (
    cd data || exit
    echo 'Data'
    build
  )
fi

if $presenter; then
  (
    cd presenter || exit
    echo 'Presenter'
    build
  )
fi

if $utilities; then
  (
    cd utilities/ || exit
    echo 'Utilities'
    build
  )
fi

if $ui; then
  echo 'Root'
  build
fi


if $translate; then
  cd utilities/
  echo 'Translate'
  dart run slang
fi