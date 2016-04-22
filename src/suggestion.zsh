
#--------------------------------------------------------------------#
# Suggestion                                                         #
#--------------------------------------------------------------------#

# Delegate to the selected strategy to determine a suggestion
_zsh_autosuggest_suggestion() {
	local prefix="${(b)1}" # Escape special chars in prefix
	local strategy_function="_zsh_autosuggest_strategy_$ZSH_AUTOSUGGEST_STRATEGY"

	if [ -n "$functions[$strategy_function]" ]; then
		echo -E "$($strategy_function "$prefix")"
	fi
}
