(function(tabViewer) {

	var options = {
			tabClass: 'tabViewer-tab',
			contentPanelClass: 'tabViewer-content',
			indexAttr: 'data-index',
			activeClass: 'active'
		},
		elements = {
			tabs: [],
			contentPanels: []
		},
		
	init = function() {
		elements.tabs = document.getElementsByClassName(options.tabClass);
		elements.contentPanels = document.getElementsByClassName(options.contentPanelClass);

		activateTab(0);

		addClickListener();
	},

	addClickListener = function() {
		document.getElementById('tabViewer-tabMenu').addEventListener('click', function(e) {
			var tab = e.target;

			if(!myCore.hasClass(tab, options.tabClass)) return;

			var tabIndex = tab.getAttribute(options.indexAttr);

			if(tabIndex === null) return;

			activateTab(tabIndex);
		});
	},

	activateTab = function(index) {
		updateElementsClassNames(elements.tabs, index);
		updateElementsClassNames(elements.contentPanels, index);
	},

	updateElementsClassNames = function(elements, index) {
		for (var i = 0; i < elements.length; i++) {
			if(i == index) {
				myCore.addClassName(elements[i], options.activeClass);
			} else {
				myCore.removeClassName(elements[i], options.activeClass);
			}
		}
	};

	window.addEventListener('DOMContentLoaded', function() {
		init();
	});
	
}(window.tabViewer = window.tabViewer || {}));


(function(myCore) {

	myCore.addClassName = function(elem, className) {
		if (elem) {
			var classes = elem.className.split(' ');
			var classesToAdd = className.split(' ');

			var added = false;
			for (var i = 0, l = classesToAdd.length; i < l; i++) {
				if (!myCore.hasClass(elem, classesToAdd[i])) {
					classes.push(classesToAdd[i]);
					added = true;
				}
			}

			if (added) {
				elem.className = classes.join(' ');
			}
		}
	};

	myCore.removeClassName = function(elem, className) {
		if (elem) {
			var classes = elem.className.split(' ');
			var classesToRemove = className.split(' ');

			var removed = false;
			for (var i = 0, l = classesToRemove.length; i < l; i++) {
				var index = classes.indexOf(classesToRemove[i]);
				if (index != -1) {
					classes.splice(index, 1); // remove the class from the array
					removed = true;
				}
			}

			if (removed) {
				elem.className = classes.join(' ');
			}
		}

	};

	myCore.hasClass = function(elem, className) {
		return (' ' + elem.className + ' ').indexOf(' ' + className + ' ') > -1;
	};

}(window.myCore = window.myCore || {}));