<link rel="stylesheet" href="master.css">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<script>
    function openNav() {
        document.getElementById("sidebar").style.width = "250px";
        document.getElementsByClassName("navBar").style.marginLeft = "250px";
    }
    function closeNav() {
        document.getElementById("sidebar").style.width = "0";
        document.getElementsByClassName("navBar").style.marginLeft = "0";
    }
</script>
<nav class="navBar">
    <b><a href="/ScoutMaster_war/home" class="navTransition">Scout Master</a></b>
    <a href="/ScoutMaster_war/search" class="navTransition collapseNav">Search for Prospects</a>
    <a href="/ScoutMaster_war/toolsPage" class="navTransition collapseNav">Tools</a>

    <button class="openButton btn btn-primary" onclick="openNav()" role="open menu">
        <div class="hamburger"></div>
        <div class="hamburger"></div>
        <div class="hamburger"></div>
    </button>
</nav>

<div id="sidebar">
    <a href="javascript:void(0)" class="closeButton" onclick="closeNav()" role="close menu">&times;</a>
    <b><a href="/ScoutMaster_war/home" aria-label="Home" class="navTransition logo left text-decoration-none">Scout Master</a></b>
    <a href="/ScoutMaster_war/search" class="navTransition text-left text-decoration-none">Search for Prospects</a>
    <a href="/ScoutMaster_war/toolsPage" class="navTransition text-decoration-none">Tools</a>
</div>