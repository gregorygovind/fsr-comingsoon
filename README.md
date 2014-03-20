freeseoreport
=============

ENV - Staging and Production

Setup:
cp .gitconfig.sample ./.git/config
cp ./config/database.example.yml ./config/database.yml
rake db:create:all
rake db:migrate
rake db:seed

Push to github
git push origin master

To update local master repo
git rebase origin master

Deployment:

To Deply to heroku staging:
gp staging master
heroku run rake db:migrate -a freeseoreport-staging

To Deply to heroku production:
gp prod master
heroku run rake db:migrate -a freeseoreport-prod
