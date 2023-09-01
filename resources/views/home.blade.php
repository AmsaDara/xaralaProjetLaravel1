@extends("layouts.master")

@section("contenu")

<div class="row">
    <div class="col-12 p-4">
        <div class="jumbotron">
            <h1 class="display-3">Bienvenue, <strong>{{ userFullName() }}</strong></h1>
            @foreach ( auth()->user()->roles as $role )
                <p>{{ $role->nom }}</p>
            @endforeach
            <p class="lead">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC</p>
            <hr class="my-4">
            <p>he standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.</p>
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
            </p>
        </div>
    </div>
</div>

@endsection