#
# Ruby
#
# A dynamic, reflective, object-oriented, general-purpose programming language.
# Link: https://www.ruby-lang.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_EPIC_RUBY_SHOW="${SPACESHIP_EPIC_RUBY_SHOW=true}"
SPACESHIP_EPIC_RUBY_PREFIX="${SPACESHIP_EPIC_RUBY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_EPIC_RUBY_SUFFIX="${SPACESHIP_EPIC_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EPIC_RUBY_SYMBOL="${SPACESHIP_EPIC_RUBY_SYMBOL="💎 "}"
SPACESHIP_EPIC_RUBY_COLOR="${SPACESHIP_EPIC_RUBY_COLOR="red"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of EpicRuby
spaceship_epic_ruby() {
  [[ $SPACESHIP_EPIC_RUBY_SHOW == false ]] && return

  # Show versions only for Ruby-specific folders
  [[ -z "$EPIC_IMAGE" || "$EPIC_IMAGE" != *ruby*  ]] && return

  local 'epic_ruby_version'

  local epic_ruby_version=$(echo $EPIC_IMAGE | sed -re 's/^.+?://')

  spaceship::section \
    "$SPACESHIP_EPIC_RUBY_COLOR" \
    "$SPACESHIP_EPIC_RUBY_PREFIX" \
    "${SPACESHIP_EPIC_RUBY_SYMBOL}v${epic_ruby_version}" \
    "$SPACESHIP_EPIC_RUBY_SUFFIX"
}
