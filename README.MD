# FASHIONXT

### How to start a local server:

1. git clone the repository to your local machine  
    ```git clone https://github.tamu.edu/avinsaxe/match-my-fashion_old.git```
2. Once the files are downloaded, follow the standard procedure of installing ruby on rails. 
   Click [here](https://gorails.com/setup/ubuntu/17.10)
3. It is recommended to use ```rvm``` over ```rbenv```. 
4. Once Ruby on Rails is installed, you have to install the dependencies available in gem file. 
   Important to note that the dependencies and other rail commands will only work, when installed rails version and ruby version matches the versions mentioned in Gemfile.
5. To ensure same versions are installed, open  Gemfile, and check ruby version. Do the following:
   
   ```rvm install 2.4.1```
   
   ```rvm use 2.4.1```   
6. Install the bundler
    
    ```gem install bundler```
7. Bundle install to install all the dependencies in Gemfile
    ```bundle install```
8. Start the rails server
    ```rails server```  
9. The local server will start on the following link
    
    [http://localhost:3000](http://localhost:3000)
   
   
    
### What will you see on the web app?

1. Home page
2. Login/Signup, Search
3. My Profile
4. Facebook Login is supported.
5. Admin user has been added, with privilege for using the admin APIs. This is only available to the single admin user, added by the developer. Contact admin for help

### To get started

1. Click on sign up and create your profile in 3 quick steps.
2. Once your profile is created, you will be shown logged in to the account
3. Click on my profile page, to see your profile information.
4. If you want to edit your profile, you can click on the three main links available on edit profile page
5. If you want to search other users, you click on search button on top of the page.
6. Personal information like phone number, email id is displayed on everyone's profile page to connect with others.

### How does search feature work:

Contains- Matches any data which contains the searched word
1. Starts With- Matches any data which starts with the searched word 
2. Ends With- Matches any data which ends with the searched word
3. Exactly Matches- Matches any data that exactly matches the searched word
4.  Improved search criteria: Added email id in the search criteria. Email id is also regular expression based

### Notes:
    
1. You can always choose to keep the default value of contains in the regular expression-based search, which guarantees the best possible results without any hassle of choosing a regular expression.
2. You can keep all the search fields blank for the search, and in that case, the page displays all the possible search results. Simply put, all the fields in the search are totally optional and any combination of search parameters can be utilized to improve the search results.
3.  States and Country available in Search Page
4.  Earlier search parameters didn’t include the country and didn’t make states available for user. Now I have included the country parameter in the search form, and included the states as a select option in the drop-down list. Now the search will support country-based search as well.
