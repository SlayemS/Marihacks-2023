<?php $this->view('shared/header','Main page'); ?>

        <div class="tab">
			<button class="tablinks" onclick="openTab(event, 'parks')">Search Parks</button>
			<button class="tablinks" onclick="openTab(event, 'activities')">Select Activities</button>

		<div id="parks" class="tabcontent">
            <div class="list">
                <ul>
                    <li class="aa"><a onclick="showLocation('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2794.7169014270987!2d-73.81006358449485!3d45.51405827910138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc9117b160e1e19%3A0x92614a5587d354c1!2s540%20Autoroute%2013%2C%20Laval%2C%20QC%20H7X%203V5%2C%20Canada!5e0!3m2!1sen!2sus!4v1651282372621!5m2!1sen!2sus')">Petinos Sainte Dorothe</a></li>
                    <li class="aa"><a onclick="showLocation('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1403.0866522948036!2d-73.75016640898767!3d45.55987010758764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc91a0b58c90287%3A0x1c0b17f7b68c4b30!2s2900%20Avenue%20Pierre-P%C3%A9ladeau%2C%20Laval%2C%20QC%20H7T%203B3%2C%20Canada!5e0!3m2!1sen!2sus!4v1651281143033!5m2!1sen!2sus')">Trois Brasseur Centropolis</a></li>
                </ul>
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
                for (i = 0; i < tablinks.length; i++) {
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
<?php $this->view('shared/footer'); ?>