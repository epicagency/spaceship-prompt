#
# Node.js
#
# Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine.
# Link: https://nodejs.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_EPIC_NODE_SHOW="${SPACESHIP_EPIC_NODE_SHOW=true}"
SPACESHIP_EPIC_NODE_PREFIX="${SPACESHIP_EPIC_NODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_EPIC_NODE_SUFFIX="${SPACESHIP_EPIC_NODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EPIC_NODE_SYMBOL="${SPACESHIP_EPIC_NODE_SYMBOL="⬢ "}"
SPACESHIP_EPIC_NODE_DEFAULT_VERSION="${SPACESHIP_EPIC_NODE_DEFAULT_VERSION=""}"
SPACESHIP_EPIC_NODE_COLOR="${SPACESHIP_EPIC_NODE_COLOR="green"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of epic_node, exception system.
spaceship_epic_node() {
  [[ $SPACESHIP_EPIC_NODE_SHOW == false ]] && return

  # Show EPIC_NODE status only for JS-specific folders
  [[ -z "$EPIC_NODE" ]] && return

  spaceship::section \
    "$SPACESHIP_EPIC_NODE_COLOR" \
    "$SPACESHIP_EPIC_NODE_PREFIX" \
    "${SPACESHIP_EPIC_NODE_SYMBOL}${EPIC_NODE}" \
    "$SPACESHIP_EPIC_NODE_SUFFIX"
}
