import requests

repo_url = 'https://github.com/Nitish1390/CICD-PIPELINE.git'

response = requests.get(repo_url)

if response.status_code == 200:
    commits = response.json()
    # Check for new commits and trigger deployment if necessary
    # You can compare the latest commit hash with the previous one to detect changes.
else:
    print('Failed to fetch commits from GitHub API')
