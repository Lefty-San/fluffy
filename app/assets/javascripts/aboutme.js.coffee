# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
`
function getData(callback) {
    var jsonUrl = "http://115.114.1.149:7005/soa-infra/resources/default/Project1!3.0/BioaRestService/bioaservice?patientId=12&patientName=Anshu&systolicpressure=100&diastolicpressure=70";

    $.getJSON(jsonUrl)
    .done(
            function(response, textStatus) {
                callback.call(this, response);
            })
            .fail(
                    function(jqxhr, settings, exception) {
                        console.log(exception);
                    });
}

$( document ).ready(function(){
    getData(function(picObj){
        buildFrames(picObj);
    });
});


function buildFrames(picObj) {

    var frames = "";
    var len = picObj
    $('body').append(len);
}
`