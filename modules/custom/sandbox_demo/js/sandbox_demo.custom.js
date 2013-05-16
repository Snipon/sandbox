
/*
window.addEvent('domready', function(){
  console.log('Sandbox demo JS operational');

  $$('.pane-tester').addEvents({
    mouseenter: function(){
      this.set('tween', {
        duration: 1000,
        transition: Fx.Transitions.Bounce.easeOut // This could have been also 'bounce:out'
      }).tween('background-color', '#ABCDEF');
    },
    mouseleave: function(){
      this.set('tween', {}).tween('background-color', '#FFFFFF');
    }
  });
  console.log('mootools');
});
*/
jQuery(function($){
  console.log('Woot');
  $('#myCarousel').carousel('cycle');
});
