freeseoreport
=============

ENV - Staging and Production

Setup:
cp .gitconfig.sample ./.git/config
cp ./config/database.example.yml ./config/database.yml
rake db:create:all
rake db:migrate
rake db:seed

