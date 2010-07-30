var j = jQuery.noConflict();
j(document).ready(function() {
	j('#tabs').tabs();
	var cDate = new Date(j('#release-time').text());
	j('#countdown').countdown({until: cDate, compact: false, format:'yowdhms', significant:1, layout: '{y<}{yn} {yl} {y>}{o<}{on} {ol} {o>}{w<}{wn} {wl} {w>}{d<}{dn} {dl} {d>}{h<}{hn} {hl} {h>}{m<}{mn} {ml} {m>}{s<}{sn} {sl}{s>}'});
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