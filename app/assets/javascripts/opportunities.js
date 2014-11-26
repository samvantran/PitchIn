$(function() {
  header = document.querySelector( '.navbar-fixed-top' )
    if (window.location.pathname !== "/"){
      classie.remove( header, 'navbar-inverse' );
      classie.add( header, 'navbar-bg' );
    }

})