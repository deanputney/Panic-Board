var j = jQuery.noConflict();
j(document).ready(function() {
	var cDate = new Date(j('#release-time').text());
	j('#countdown').countdown({until: cDate, compact: false, format:'y o w d h m s', significant:2, onTick: tick, layout: '<ul>{y<}<li>{yn} {yl}</li>{y>}{o<}<li>{on} {ol}</li>{o>}' + 
    '{w<}<li>{wn} {wl}</li>{w>}{d<}<li>{dn} {dl}</li>{d>}{h<}<li>{hn} {hl}</li>{h>}' + 
    '{m<}<li>{mn} {ml}</li>{m>}{s<}<li>{sn} {sl}</li>{s>}</ul>'});
	setHides();
});

function setHides() {
    j("a.toolbutton").livequery('click', function() {
        var jmodifyBox = $(this).next(".tool");
        
        jmodifyBox.slideDown(200, null);
        jmodifyBox.css("display", "block");
        return false;
    });
}

function tick(){
	j('.countdown ul li:nth-child(2)').css("font-size","25px");
}