git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"
git checkout --orphan latest-repos
git rm -rf *.md
# cp .github/workflows/latest-linux-x86_64-bundle.md ./README.md
git rm -rf .github

mv macos-arm64/ tarman-user-repository
tar -czvf macos-arm64.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf macos-arm64/
git rm -rf tarman-user-repository/

mv linux-x86_64/ tarman-user-repository
tar -czvf linux-x86_64.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf linux-x86_64/
git rm -rf tarman-user-repository/

mv linux-arm64/ tarman-user-repository
tar -czvf linux-arm64.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf linux-arm64/
git rm -rf tarman-user-repository/

mv macos-x86_64/ tarman-user-repository
tar -czvf macos-x86_64.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf macos-x86_64/
git rm -rf tarman-user-repository/

git add macos-arm64.tar.gz
git add linux-x86_64.tar.gz
git add linux-arm64.tar.gz
git add macos-x86_64.tar.gz

git commit -m "new bundle"
git push --set-upstream origin latest-repos --force
