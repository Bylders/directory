
$(function() {

    // Bar Chart
    Morris.Bar({
        element: 'today-sales',
        data: [{
            food: 'Dal',
            sales: 50
        }, {
            food: 'Chicken',
            sales: 20
        }, {
            food: '1 Aur cheez',
            sales: 30
        }, {
            food: 'VBla VBla',
            sales: 10
        }, {
            food: 'Paneer',
            sales: 5
        }, {
            food: 'Dish',
            sales: 40
        }, {
            food: 'Dal',
            sales: 50
        }, {
            food: 'Chicken',
            sales: 20
        }, {
            food: '1 Aur cheez',
            sales: 30
        }, {
            food: 'VBla VBla',
            sales: 10
        }, {
            food: 'Paneer',
            sales: 5
        }, {
            food: 'Dish',
            sales: 40
        }, {
            food: 'Dal',
            sales: 50
        }, {
            food: 'Chicken',
            sales: 20
        }, {
            food: '1 Aur cheez',
            sales: 30
        }, {
            food: 'VBla VBla',
            sales: 10
        }, {
            food: 'Paneer',
            sales: 5
        }, {
            food: 'Dish',
            sales: 40
        }, {
            food: 'Dal',
            sales: 50
        }, {
            food: 'Chicken',
            sales: 20
        }, {
            food: '1 Aur cheez',
            sales: 30
        }, {
            food: 'VBla VBla',
            sales: 10
        }, {
            food: 'Paneer',
            sales: 5
        }, {
            food: 'Dish',
            sales: 50
        }, ],
        xkey: 'food',
        ykeys: ['sales'],
        labels: ['Sales'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        resize: true
    });


    Morris.Bar({
        element: '7day-sales',
        data: [{
            food: 'Dal',
            sales: 50
        }, {
            food: 'Chicken',
            sales: 20
        }, {
            food: '1 Aur cheez',
            sales: 300
        }, {
            food: 'VBla VBla',
            sales: 100
        }, {
            food: 'Paneer',
            sales: 50
        }, {
            food: 'Dish',
            sales: 400
        }, {
            food: 'Dal',
            sales: 500
        }, {
            food: 'Chicken',
            sales: 200
        }, {
            food: '1 Aur cheez',
            sales: 300
        }, {
            food: 'VBla VBla',
            sales: 100
        }, {
            food: 'Paneer',
            sales: 50
        }, {
            food: 'Dish',
            sales: 400
        }, {
            food: 'Dal',
            sales: 500
        }, {
            food: 'Chicken',
            sales: 200
        }, {
            food: '1 Aur cheez',
            sales: 300
        }, {
            food: 'VBla VBla',
            sales: 100
        }, {
            food: 'Paneer',
            sales: 50
        }, {
            food: 'Dish',
            sales: 400
        }, {
            food: 'Dal',
            sales: 500
        }, {
            food: 'Chicken',
            sales: 200
        }, {
            food: '1 Aur cheez',
            sales: 300
        }, {
            food: 'VBla VBla',
            sales: 100
        }, {
            food: 'Paneer',
            sales: 50
        }, {
            food: 'Dish',
            sales: 500
        }, ],
        xkey: 'food',
        ykeys: ['sales'],
        labels: ['Sales'],
        barRatio: 0.4,
        xLabelAngle: 35,
        hideHover: 'auto',
        resize: true
    });
});  