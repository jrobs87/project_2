$(document).ready(function () {

    console.log("Swiper ready!");

    // set up the liked dogs array card counter
    dogsLiked = []

    cardCount = document.getElementById("tinderList").childElementCount;
    console.log(`Card Stack loaded.  Total card count: ${cardCount}`);

    function cardCounter() {
        // reduces Card Count by 1 each time a card is swiped
        cardCount -= 1;
        console.log(`New card count: ${cardCount}`);

        // Display modal, send POST request with ShortList, button or redirect to ShortList Page
        if (cardCount === 0) {
            console.log('Cards depleted!  Show results and send to server');
            console.log(dogsLiked);
        }
    }

    $("#tinderslide").jTinder({
        onDislike: function (item) {
            let dogID = item.data("dog-id");
            let dogName = item.data("dog-name");

            cardCounter();

            // console.log('Dislike image ' + (item.index() + 1));
            // console.log(`Disliked ${dogName} - ID ${dogID}`);
        },
        onLike: function (item) {
            let dogID = item.data("dog-id");
            let dogName = item.data("dog-name");

            cardCounter();

            dogsLiked.push(dogID);

            // console.log('Like image ' + (item.index() + 1));
            // console.log(`Liked ${dogName} - ID ${dogID}`);
        },
        // jTinder config
        animationRevertSpeed: 200,
        animationSpeed: 400,
        threshold: 1,
        likeSelector: '.like',
        dislikeSelector: '.dislike'
    });

    // Set button action to trigger jTinder like & dislike.
    $('.actions .like, .actions .dislike').click(function (e) {
        e.preventDefault();
        $("#tinderslide").jTinder($(this).attr('class'));
    });
});
