function searchData() {
    var searchQuery = document.getElementById('searchInput').value;
    
    // Kirim permintaan Ajax ke server untuk mencari data berdasarkan searchQuery
    // Pastikan URL pada bagian 'ajax/search.php' disesuaikan dengan file PHP yang menghandle proses pencarian
    
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var response = xhr.responseText;
            document.getElementById('searchResults').innerHTML = response;
        }
    };
    
    xhr.open('GET', 'ajax/search.php?searchQuery=' + encodeURIComponent(searchQuery), true);
    xhr.send();
}
