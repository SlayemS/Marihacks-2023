<?php $this->view('shared/header','Main page'); ?>

<body onload="openTab(event, 'parks')">
	<div class="image">
		<h1>Welcome to our website</h1>
	</div>
    <div class="navbar">
        <a href="/Home/park">Home</a>
        <a href="#">About Us</a>
        <a href="#">Help</a>
    </div>


<div class="container">

    <div class="tab">
        <button class="tablinks active" onclick="openTab(event, 'parks')">Search Parks</button>
        <button class="tablinks" onclick="openTab(event, 'activities')">Select Activities</button>

        <div id="parks" class="tabcontent">
            <div class="list">
                <?php
                try {
                    // Set up database connection
                    $servername = "localhost";
                    $username = "root";
                    $password = "";
                    $dbname = "parktivity";

                    $conn = new mysqli($servername, $username, $password, $dbname);

                    // Check connection
                    if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                    }

                    // Query the database
                    $sql = "SELECT * FROM park";
                    $result = $conn->query($sql);

                    // Display the results as an unordered list
                    echo "<ul>";
                    if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<li class=\"aa\"><a onclick=\"showLocation('".$row["park_link"]."')\">".$row["park_name"]."<br><p style=\"font-size: 12px;\">".$row["park_address"]."</P></a></li>";
                    }
                    } else {
                    echo "No results found.";
                    }
                    echo "</ul>";

                    // Close the database connection
                    $conn->close();
                } catch (Exception $e) {
                    echo "Error: " . $e->getMessage();
                }
                ?>
            </div>
        </div>
        <div id="activities" class="tabcontent" >
            <div class="list">
                <ul>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                    <li>Bolwing</li>
                    <li>Hockey</li>
                    <li>walk</li>
                </ul>
            </div>
        </div>
    </div>
    
    <iframe id="map-iframe" class="map" src="https://maps.google.com/maps?hl=en&amp;q=1,%20Montreal,%20Canada&amp;output=embed" allowfullscreen></iframe>
    
    <script>
        function openTab(evt, tabName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            // console.log(evt.type);
            // console.log(evt.type === "click");
            for (i = 0; i < tablinks.length; i++) {
                if (evt.type === "load") {
                    break
                }
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        function showLocation(locationUrl) {
            var mapIframe = document.getElementById('map-iframe');
            mapIframe.src = locationUrl;
        }
    </script>
</div>

<?php $this->view('shared/footer'); ?>