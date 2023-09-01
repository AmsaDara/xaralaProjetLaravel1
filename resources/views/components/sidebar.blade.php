<aside class="control-sidebar control-sidebar-dark">
            <div class="p-1">
                <div class="bg-dark">
                    <div class="card-body bg-dark box-profile">
                    <div class="text-center">
                    <img class="profile-user-img img-fluid img-circle" src="{{asset('images/user2.jpg')}}" alt="User profile picture">
                    </div>
                    <h3 class="profile-username text-center ellipsis">{{ userFullName() }}</h3>
                    <p class="text-muted text-center">
                        {{ getRolesName() }}
                    </p>
                    <ul class="list-group bg-dark mb-3">
                    <li class="list-group-item">
                        <a class="d-flex align-items-center"><i class="fa fa-lock pr-2"></i><b>Mot De Passe</b></a>
                    </li>
                    <li class="list-group-item">
                        <a class="d-flex align-items-center"><i class="fa fa-user pr-2"></i><b>Mon Profl</b></a>
                    </li>
                    </ul>
                    <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"
                     class="btn btn-primary btn-block"><b>Déconnexion</b></a>
                     
                     <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                     </form>
                    </div>

                </div>
            </div>
        </aside>