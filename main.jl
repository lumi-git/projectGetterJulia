using HTTP
using JSON
github_user = "lumi-git"
url = "https://api.github.com/users/$github_user/repos"
response = HTTP.get(url)

data = JSON.parse(String(response.body))

for repo in data
    println(repo["name"])
end
