
#
# EpicWordpress
#
# Current epic_wordpress version.

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_EPIC_WORDPRESS_SHOW="${SPACESHIP_EPIC_WORDPRESS_SHOW=true}"
SPACESHIP_EPIC_WORDPRESS_PREFIX="${SPACESHIP_EPIC_WORDPRESS_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_EPIC_WORDPRESS_SUFFIX="${SPACESHIP_EPIC_WORDPRESS_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EPIC_WORDPRESS_SYMBOL="${SPACESHIP_EPIC_WORDPRESS_SYMBOL="\uE70B "}"
SPACESHIP_EPIC_WORDPRESS_COLOR="${SPACESHIP_EPIC_WORDPRESS_COLOR="red"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

spaceship_epic_wordpress() {
  [[ $SPACESHIP_EPIC_WORDPRESS_SHOW == false ]] && return

  # Show epic_wordpress version only when repository is a epic_wordpress
  local 'epic_wordpress_version'

  if [[ -f Dockerfile ]]; then
    epic_wordpress_version=$(grep 'containers/wordpress' Dockerfile | sed -re 's/.*:([0-9\-\.]+?)(-builder)?/\1/')
  fi

  [[ -z $epic_wordpress_version || "$epic_wordpress_version" == "null" || "$epic_wordpress_version" == "undefined" ]] && return

  spaceship::section \
    "$SPACESHIP_EPIC_WORDPRESS_COLOR" \
    "$SPACESHIP_EPIC_WORDPRESS_PREFIX" \
    "${SPACESHIP_EPIC_WORDPRESS_SYMBOL}v${epic_wordpress_version}" \
    "$SPACESHIP_EPIC_WORDPRESS_SUFFIX"
}
