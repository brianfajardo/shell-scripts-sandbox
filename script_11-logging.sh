#! /bin/bash

# The syslog standard uses facilities and severities to categorize messages.

# Facilities: kern, user, mail, daemon, auth, local0, local7
# Severities: emerg, alert, crit, err, warning, notice, info, debug

function log() {
    local MESSAGE=$@
    echo $MESSAGE

    # -p user.info logs the message(s) as informational level in the user facility.
    logger -i -p user.info -t "test-script" $MESSAGE 
}

log "Random number: ${RANDOM}" 🚀
log "Random number: ${RANDOM}" ⛵️
log "Random number: ${RANDOM}" 🚤