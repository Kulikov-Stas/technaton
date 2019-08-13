<main>
    <section class="map pt-0">
        <div class="container-fluid">
            <div class="mask-map">
                <div class="info-block">
                    <?php echo $description; ?>
                </div>
            </div>
            <div id="map">
            </div>
        </div>
    </section>
    <?php require("catalog/view/theme/technaton/template/common/feedback.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
    <script>
        // Initialize and add the map
        function initMap() {
            var coordinates = { lat: 46.463637, lng: 30.738305 };
            var map = new google.maps.Map(
                document.getElementById('map'), { zoom: 17, center: coordinates });
            var marker = new google.maps.Marker({ position: coordinates, map: map });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUWsFsO6reAfRrNXBo0tt9BdcnA_FceA4&callback=initMap"></script>
</main>