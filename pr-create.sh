    target_branch="$(git remote show origin | grep 'HEAD branch' | cut -d' ' -f5)"
    template_content=$(curl -H "Authorization: Bearer GHE_Token" https://raw.ghe.intra.nudatasecurity.com/intelligence-services/.github/master/.github/PULL_REQUEST_TEMPLATE.md)
    gh pr create --base $target_branch --head $feature_branch --title $1 --body "$template_content" --assignee @me --fill
