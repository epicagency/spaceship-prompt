#
# PHP
#
# PHP is a server-side scripting language designed primarily for web development.
# Link: http://www.php.net/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_EPIC_PHP_SHOW="${SPACESHIP_EPIC_PHP_SHOW=true}"
SPACESHIP_EPIC_PHP_PREFIX="${SPACESHIP_EPIC_PHP_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_EPIC_PHP_SUFFIX="${SPACESHIP_EPIC_PHP_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EPIC_PHP_SYMBOL="${SPACESHIP_EPIC_PHP_SYMBOL="🐘 "}"
SPACESHIP_EPIC_PHP_COLOR="${SPACESHIP_EPIC_PHP_COLOR="blue"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of EPIC_PHP
spaceship_epic_php() {
  [[ $SPACESHIP_EPIC_PHP_SHOW == false ]] && return

  # Show only if epic_php files or composer.json exist in current directory
  [[ -z "$EPIC_IMAGE" || "$EPIC_IMAGE" != *php*  ]] && return

  local epic_php_version=$(echo $EPIC_IMAGE | sed -re 's/^.+?://')

  spaceship::section \
    "$SPACESHIP_EPIC_PHP_COLOR" \
    "$SPACESHIP_EPIC_PHP_PREFIX" \
    "${SPACESHIP_EPIC_PHP_SYMBOL}v${epic_php_version}" \
    "${SPACESHIP_EPIC_PHP_SUFFIX}"
}
