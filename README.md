# XebiaTest
This is an assignement of xebia to be done by Kamlesh. I have made this git repo as public.

The project is about the list of most popolar news articles and these news articles conatians information of news data.


you need to have xcode in order to execute thsi project. once you get xcode you need to double click the .xcodeproject file and then you can runn it by pressing *cmd + R*


# view contoller
* This projects contains a view contoller whisch is handling the table view and the listing part of the application it is registered with custom cell which shows:
1. Article title
2. Written by
3. Category it belongs to
4. time it got published
6. and an image if it has a media associated with

#  Network manager
* Then it contains Network manager which is a singleton class used to manage api request it is handling request and its reponses with generic. 
      * you jsut need to make you model to confirm a protococal i.e *parsebale* and rest work will be done by this manager it will take url and and request paramenets and it will resturn you the model type you provide it, provided that model must be having thoses keys which are supposed to be there.

# ViewModel
This project is made with MVVM Pattern, and hence has a file viewMdoel which manageing the processing part like apis responses parsing, data source and delegates items for viiews and assoiacted with dynamic binding with view.

# Models
There are one model
1. ArticleModal


# Uitilies 
Files like constanst, color and theme  are there in this sections. And extensions of [Data, Dictionary, Array, String, etc]

# Uinit Testing 
I have implemented one api test case as uinit testing as i found that that test was enough for the application as this application is  single screen application and every logic comes under that single test case. i did it because of lack of time.  




