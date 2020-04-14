window.onload = function (e) {
    
    document.getElementById('railroadAll').addEventListener('click', function (e) {
        showAllRows('classtable');
    });
    
    document.getElementById('railroadPRR').addEventListener('click', function (e) {
        hideAllRows('classtable');
        showRowsByClass('PRR');
    });
   
    document.getElementById('railroadForeign').addEventListener('click', function (e) {
        showAllRows('classtable');
        hideRowsByClass('PRR');
    });
};

var showAllRows = function (tableId) {
    var rows = document.getElementById(tableId).tBodies[0].rows;
    for (var i = 0; i < rows.length; i++) {
        rows[i].style.display = '';
    }
};

var hideAllRows = function (tableId) {
    var rows = document.getElementById(tableId).tBodies[0].rows;
    for (var i = 0; i < rows.length; i++) {
        rows[i].style.display = 'none';
    }
};

var showRowsByClass = function (rowClassName) {
    var rows = document.querySelectorAll('.' + rowClassName);
    for (var i = 0; i < rows.length; i++) {
        rows[i].style.display = '';
    }
};

var hideRowsByClass = function (rowClassName) {
    var rows = document.querySelectorAll('.' + rowClassName);
    for (var i = 0; i < rows.length; i++) {
        rows[i].style.display = 'none';
    }
};