var tutorial = function(){

  //This is the tutorial button
  $('#tutorialBTN').on('click', function(){
    
      $('#tutorialBox.tutNotDropped').toggleClass( "tutDropped" )

      $('#tutorialBTN').toggleClass( "borderRight" )

  });




}