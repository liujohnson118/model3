var map, infoWindow;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 32, lng: -120},
          zoom: 5
        });
        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Your Location');
            infoWindow.open(map);
            map.setCenter(pos);


            var range_60kWh = new google.maps.Circle({
              strokeColor: '#FF0000',
              fillColor: '#FF0000',
              strokeOpacity: 0.8,
              strokeWeight: 2,
              fillOpacity: 0,
              map: map,
              center: pos,
              radius: 345000
            });
            var range_70kWh = new google.maps.Circle({
              strokeColor: '#ff9900',
              fillColor: '#ff9900',
              strokeOpacity: 0.8,
              strokeWeight: 2,
              fillOpacity: 0,
              map: map,
              center: pos,
              radius: 400000
            });
            var range_80kWh = new google.maps.Circle({
              strokeColor: '#00cc66',
              fillColor: '#00cc66',
              strokeOpacity: 0.8,
              strokeWeight: 2,
              fillOpacity: 0,
              map: map,
              center: pos,
              radius: 480000
            });
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }