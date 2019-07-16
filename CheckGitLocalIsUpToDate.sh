CheckGitLocalIsUpToDate () {

    git remote update
    git fetch
    GIT_UPSTREAM=${1:-'@{u}'}
    GIT_LOCAL=$(git rev-parse @)
    GIT_REMOTE=$(git rev-parse "$GIT_UPSTREAM")

    if [ $GIT_LOCAL = $GIT_REMOTE ]; then
        echo "ice-build Up-to-date"
    else
        AbortLog "Please Update ice-build tools and try again"
    fi
}
