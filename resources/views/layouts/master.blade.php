<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Application Gestion Des Clients</title>
            <link rel="stylesheet" href="{{mix("css/app.css")}}" />
            @livewireStyles
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">

        <x-topnav />


        <aside class="main-sidebar sidebar-dark-primary elevation-4">

        <a href="#" class="brand-link">
        <span class="brand-text font-weight-bold"><b>Appli Gestion Taches </b></span>
        </a>

        <div class="sidebar">

        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
        <img src="{{asset('images/user2.jpg')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
        <a href="#" class="d-block">{{userFullName()}}</a>
        </div>
        </div>


        <x-menu />

        </div>

        </aside>

        <div class="content-wrapper">

        <div class="content">
        <div class="container-fluid">
            @yield("contenu")
        </div>
        </div>

        </div>

            <x-sidebar />

        <footer class="main-footer">

        <div class="float-right d-none d-sm-inline">
        Anything you want
        </div>

        <strong>Copyright &copy; 2023 <a href="https://adminlte.io">Elhadji Samba SY | Xarala </a>.</strong> All rights reserved.
        </footer>
        </div>

        <script src="{{mix("js/app.js")}}"></script>

        @livewireScripts

    </body>
</html>