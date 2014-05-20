$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
$('body').css({'background-color': 'pink'})

 
//RELEASE 1:
  //Add code here to select elements of the DOM 
bodyElement = $('body')
headerOne = $('h1')
mascot = $('.mascot')
mascotImage = $('.mascot img')

 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 headerOne.css ({
 	'text-align':'center',
 	'color': 'blue', 
 	'border': '10px solid black', 
 	'visibility':''
 })
 mascot.css({'text-align' : 'center'})
 mascotImage.css({'width':'50%'})


 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.listofimages.com/wallpapers/2012/07/lightsaber-fun-humor-sword-grass-woodchuck-animals-1024x1280.jpg')
  })

   $('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://scm-l3.technorati.com/12/12/13/73853/devbootcamp.png?t=201212131312312')
  })



   
// I don't understand what the function (e) is doing.
// how would I change the properties of the images? i.e. width height  



  	
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this


