git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"
git checkout --orphan latest-repos
git rm -rf *.md
# cp .github/workflows/latest-linux-bundle.md ./README.md
git rm -rf .github

mv macos/ tarman-user-repository
tar -czvf macos.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf macos/
git rm -rf tarman-user-repository/

mv linux/ tarman-user-repository
tar -czvf linux.tar.gz tarman-user-repository/
rm -rf tarman-user-repository
git rm -rf linux/
git rm -rf tarman-user-repository/

git add macos.tar.gz
git add linux.tar.gz

git commit -m "new bundle"
git push --set-upstream origin latest-repos --force
