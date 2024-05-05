<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 

    <title>Waffle House Location</title>
    <style>


        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        #mapContainer {
    height: 400px;
    width: 80%;
    max-width: 800px;
    margin: 0 auto; /* Center align horizontally */
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
}


        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <!-- Add your API key here -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLjRBeBRcZeCUFJpvynaAHO8z0wXIDGGI"></script>
</head>
<body>
    <header>
   <a href="LANDING_PAGE.aspx"><img id="top"src="images/logoWH.jpg" ></a>
</header>

<nav id="navbar">
    <ul id="navcontent">
        <li><a href="WP_PROJECT_REVIEWS.aspx">REVIEWS</a></li>
        <li><a href="WP_PROJECT_ABOUT.aspx">ABOUT</a></li>
        <li><a href="addtocart.aspx">MENU</a></li>
        <li><a href="WP_PROJECT_CONTACTUS.aspx">CONTACT US</a></li>
        <li><a href="WP_PROJECT_CHEFS.aspx">CHEFS</a></li>
    </ul>
</nav>
    <br />
    <h1>Navigate to Waffle House</h1>
    <!-- Button to show the map -->
    <button onclick="showMap()">Show Map </button>
    <!-- Container for the map -->
    <div id="mapContainer"></div>

    <script>
        // Function to show the map
        function showMap() {
            console.log('Button clicked!'); // Check if this log is printed in the console
            // Replace 'YOUR_LATITUDE' and 'YOUR_LONGITUDE' with the actual coordinates of your store
            var storeLocation = { lat: 30.4284928, lng: -84.21605195 };

            // Create a new map centered at the store location
            var map = new google.maps.Map(document.getElementById('mapContainer'), {
                center: storeLocation,
                zoom: 15 // You can adjust the zoom level as needed
            });

            // Add a marker at the store location
            var marker = new google.maps.Marker({
                position: storeLocation,
                map: map,
                title: 'Waffle House Location' // Title displayed when marker is clicked
            });
        }
    </script>
</body>
</html>
