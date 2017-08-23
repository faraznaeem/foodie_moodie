var my_latitude;
var my_longitude;
var map;

document.addEventListener('DOMContentLoaded', function () {
      map = new GMaps({
        div: '#map',
        lat: 59.330668,
        lng: 18.057932,
    });

    GMaps.geolocate({
        success: function(position) {
            map.setCenter(position.coords.latitude, position.coords.longitude);
            my_latitude = position.coords.latitude;
            my_longitude = position.coords.longitude;
        },
        error: function(error) {
            alert('Geolocation failed: '+error.message);
            my_latitude = 59.330668;
            my_longitude = 18.057932;
        },
        not_supported: function() {
            alert("Your browser does not support geolocation");
            my_latitude = 59.330668;
            my_longitude = 18.057932;
        },
        always: function() {
              map.addMarker({
                lat: my_latitude,
                lng: my_longitude,
                title: 'Lima',
                click: function(e) {
                    alert('You clicked in this marker');
                }
            });
        }
    });

});
