$(document).ready(function () {
  headerState();
  quickState();

  $(window).scroll(function () {
    headerState();
    quickState();
  });

  function headerState() {
    var scrollValue = $(window).scrollTop();
    if (scrollValue > 50) {
      $('#header').addClass('scroll');
    } else {
      $('#header').removeClass('scroll');
    }
  };

  function quickState() {
    var menu = $('.topmenu > li');
    menu.on('mouseenter', function () {
      $('#header').addClass('open');
    }).on('mouseleave', function () {
      $('#header').removeClass('open');
    })
  }
  $('.kvWrap .pause').on('click', function () {
    $('.kvList').slick('slickPause');
    $(this).css({ display: 'none' });
    $('.kvWrap .play').css({ display: 'block' });
  });
  $('.kvWrap .play').on('click', function () {
    $('.kvList').slick('slickPlay')
    $(this).css({ display: 'none' });
    $('.kvWrap .pause').css({ display: 'block' });
  });

})