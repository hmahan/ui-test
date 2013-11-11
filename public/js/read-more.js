(function() {
  $(function() {
    return window.LP = (function() {
      var initialHeight;

      initialHeight = 710;
      return {
        showMore: $('.button').on('click', function() {
          if ($('.read-more-container').height() > 710) {
            $('.read-more-container').animate({
              height: initialHeight
            }, 500);
            $(this).text('Read More');
          } else {
            $('.read-more-container').animate({
              height: 2330
            }, 500);
            $(this).text('Read Less');
          }
          return false;
        }),
        lightbox: $('.image-container').click(function() {
          $(this).toggleClass('lightbox').siblings().removeClass('lightbox');
          return $('.image-container').children('img').toggleClass('lightboxImage');
        })
      };
    })();
  });

}).call(this);
