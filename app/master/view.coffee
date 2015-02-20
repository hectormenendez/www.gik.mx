window.$window   = $ window
window.$document = $ document

require '.lib/sticky/view'

$document.readyStack = []

$document.foundation().ready ->
	window.IS_DESKTOP = $('html').hasClass 'is_desktop'

	do Sticky

	# Execute all onReady functions
	(fn.call(this) if typeof fn is 'function') for fn in $document.readyStack

