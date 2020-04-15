window.onload = function (e) {
    
    document.getElementById('shipmentsAll').addEventListener('click', function (e) {
        showAllRows('carloadtable');
    });
    
    document.getElementById('shipmentsOut').addEventListener('click', function (e) {
        hideAllRows('carloadtable');
        showRowsByClass('C0');
    });
   
    document.getElementById('shipmentsIn').addEventListener('click', function (e) {
        hideAllRows('carloadtable');
        showRowsByClass('C1');
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