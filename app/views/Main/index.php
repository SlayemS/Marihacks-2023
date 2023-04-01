<?php $this->view('shared/header','Main page'); ?>

<div class="list">
	<h1>List of Cars</h1>
	<ul>
		<li><a href="#">Volvo</a></li>
		<li><a href="#">BMW</a></li>
		<li><a href="#">Mercedes</a></li>
	</ul>
</div>
<iframe class="map" width="900" height="600" frameborder="0" src="https://maps.google.com/maps?hl=en&amp;q=1,%20Montreal,%20Canada&amp;output=embed"></iframe>

<?php $this->view('shared/footer'); ?>