#!/bin/bash -e

function usage {
    echo "Usage: $0 <staging|production>"
    echo
    echo 'You must have the heroku utility installed and have push access on'
    echo 'Heroku.'
    echo
    echo 'HINT: Only Jenkins is allowed to deploy...'
}


. heroku_config.properties

THIS_SCRIPT=$(readlink -f $0)
THIS_DIR=$(dirname ${THIS_SCRIPT})

ENVIRONMENT=$app_env

STAGING_APP="$app_name""-""$app_env"
PRODUCTION_APP='test-fil-project'

function check_command_line {

    if [ "${ENVIRONMENT}" = "" ] ; then
        usage
        exit 1
    fi
}

function enable_shell_echo {
    set -x
}

function get_heroku_app_name {
    case "${ENVIRONMENT}" in
        'staging' )
            HEROKU_APP=${STAGING_APP} ;;
        'production' )
            HEROKU_APP=${PRODUCTION_APP} ;;
    esac

    if [ "${HEROKU_APP}" = "" ]; then
        echo 'You must specify one of staging/production'
        exit 1
    fi
    
    echo 'Destroying old app'
    echo 'heroku apps:destroy --app ${HEROKU_APP} --confirm ${HEROKU_APP}'
	
	heroku create ${HEROKU_APP}
	echo 'heroku app created with name :'${HEROKU_APP}
	
	heroku addons:create $addon_prostgre_hobby_dev --app ${HEROKU_APP}
	echo 'addon added for database - heroku-postgressql ... done!'
	
	git init
	git remote show
	#heroku git:remote -a ${HEROKU_APP} 
	
	echo 'going to execute db scripts...'
    heroku pg:psql --app ${HEROKU_APP} < $db_script_path
}

function enable_maintenance_mode {
    heroku maintenance:on --app ${HEROKU_APP}
}

function disable_maintenance_mode {
    heroku maintenance:off --app ${HEROKU_APP}
}

function deploy_code_to_heroku {
  mvn heroku:deploy-war -Dmaven.test.skip=true
}

function run_selenium {
  mvn $selenium_test
}

function destroy_app {
  heroku apps:destroy --app ${HEROKU_APP} --confirm ${HEROKU_APP}
}

check_command_line
enable_shell_echo
get_heroku_app_name
enable_maintenance_mode

disable_maintenance_mode
deploy_code_to_heroku
run_selenium
destroy_app