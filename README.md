# JUICII STORE 

<img src="https://res.cloudinary.com/it-s-tech/image/upload/v1584395536/Screenshot_from_2020-03-16_22-38-55_tv9z7x.png">

### About
An e-commerce shop built for Juicii Enterprise. The shop allows customers to add products to their shopping cart, which in turn displays the number of products in the cart, the price for each of those products, and the total price. Registered users can check out and pay with a confirmation code that they will need to input from their mobile phones.

### Live Demo 
Click [here](http://www.juicii.shop) to see a live version.

### Technologies Used
* Ruby
* Rails
* Rspec
* Heroku
* HTML5
* CSS3
* Bootstrap
* Monetbil API

### Installation And Usage
* Clone the repository using the command:
```
git clone git@github.com:RoyNyaga/juicii_store.git
```
* Cd into the project directory and install gems using the command:
```
bundle install
```
* Start the development server by running the command:
``` 
rails s
```
* visit http://localhost:3000 to view the application on the browser.

### Testing
* To test models:
```
rspec spec/models
```
* To test features:
```
rspec spec/features
```
### Deployment On Heroku
* Create a [Heroku](https://dashboard.heroku.com/) account.
* Install [Heroku CLI](https://dashboard.heroku.com/) on your computer.
* Login to Heroku from your terminal using the command: <br>
  ```heroku login```
* Enter your credentials as the above command will prompt you.
* Cd to the root folder of your project.
* Create a Heroku app using the command: <br> 
  ```heroku create <name-of-you-app> ```
* Commit your work and push to github. <br> 
```
  git add .
  git commit -m"commit-message"
  git push origin master
```
* Deploy your work to Heroku using the command: <br>
``` git push Heroku master```
* To see your hosted application on the browser, type the command: <br>
``` heroku open```

### Future Features
* Implementing different payment methods such as Visa card and Paypal.
* Allowing clients to download a copy of their receipts.

### Author
:bust_in_silhouette: [Nyaga Andre Roy](https://github.com/RoyNyaga)
* Gihub: [RoyNyaga](https://github.com/RoyNyaga)
* Email: [nyagaandreroy@gmail.com](mailto:nyagaandreroy@gmail.com)
* Linkedin: [Roy Nyaga](https://www.linkedin.com/in/roy-nyaga-andre/)

