window.onload = function (e) {
    
    document.getElementById('companyAll').addEventListener('click', function (e) {
        showAllRows('companytable');
    });
    
    document.getElementById('companyShipper').addEventListener('click', function (e) {
        hideAllRows('companytable');
        showRowsByClass('C1');
    });
   
    document.getElementById('companyCustomer').addEventListener('click', function (e) {
        hideAllRows('companytable');
        showRowsByClass('C0');
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