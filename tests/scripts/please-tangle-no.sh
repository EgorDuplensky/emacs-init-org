# Often forget to remove ':tangle yes' after yasnippet triggers.
line_to_check='#\+BEGIN_SRC\s*\S+\s*:tangle\s*yes'
git_root=$(git rev-parse --show-toplevel)

if grep -iqE "${line_to_check}" "${git_root}"/my-init.org; then
    echo "Tangle has been found :("
    exit 1
fi

exit 0
