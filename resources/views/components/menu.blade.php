<nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

            <li class="nav-item">
                <a href="{{route('home')}}" class="nav-link {{ setMenuActive('home') }}">
                <i class="nav-icon fas fa-home"></i>
                <p>
                Accueil
                </p>
                </a>
            </li>

            @can("manager")

            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>
                        Tableau De Bord
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>

                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-line"></i>
                        <p>Vue Globale</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-swatchbook"></i>
                        <p>Location</p>
                        </a>
                    </li>
                </ul>
            </li>

             @endcan

             @can("admin")
            
            <li class="nav-item {{ setMenuClass('admin.habilitations.', 'menu-open') }}">
                <a href="#" class="nav-link {{ setMenuClass('admin.habilitations.', 'active') }}">
                    <i class="nav-icon fas fa-user-shield"></i>
                    <p>
                        Habilitations
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>

                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="{{ route('admin.habilitations.users.index') }}" class="nav-link {{ setMenuActive('admin.habilitations.users.index') }}">
                        <i class="nav-icon fas fa-users-cog"></i>
                        <p>Utilisateurs</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-fingerprint"></i>
                        <p>Roles & permissions</p>
                        </a>
                    </li>
                </ul>
            </li>
            
            
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>
                        Gestion Articles
                        <i class="right fas fa-angle-left"></i>
                    </p>
                </a>

                <ul class="nav nav-treeview">
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-line"></i>
                        <p>Type D'articles</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-swatchbook"></i>
                        <p>Articles</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-swatchbook"></i>
                        <p>Tarifications</p>
                        </a>
                    </li>
                </ul>
            </li>
            
            @endcan
            
            @can("employe")
            <li class="nav-header">LOCATION</li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="nav-icon fas fa-users"></i>
                    <p>
                        Gestion Des Clients
                    </p>
                </a>
            </li>
                
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-exchange-alt"></i>
                        <p>Gestion Des Locations</p>
                        </a>
                    </li>
                    
                    <li class="nav-header">CAISSE</li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-coins"></i>
                        <p>Gestion De Paiement</p>
                        </a>
                    </li>
                    
            @endcan

        </ul>
        </nav>