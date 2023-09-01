<div class="row p-4 pt-5">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title"><i class="fas fa-user-plus fa-2x"></i>Formulaire de creation d'un nouvel utilisateur</h3>
                </div>

                <form role="form" wire:submit.prevent="addUser()">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="form-group flex-grow-1 mr-2">
                            <label>Nom</label>
                            <input type="text" wire:model = "newUser.nom" class="form-control @error('newUser.nom') is-invalid @enderror">
                            @error("newUser.nom")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                                
                            <div class="form-group flex-grow-1">
                            <label>Prenom</label>
                            <input type="text" wire:model = "newUser.prenom" class="form-control @error('newUser.prenom') is-invalid @enderror">
                            @error("newUser.prenom")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <label>Sexe</label>
                                <select wire:model = "newUser.sexe" class="form-control @error('newUser.sexe') is-invalid @enderror">
                                    <option value="">------</option>
                                    <option value=1>Homme</option>
                                    <option value=0>Femme</option>
                                </select>
                                @error("newUser.sexe")
                                        <span class="text-danger">{{ $message }}</span>
                                @enderror
                        </div>
                            
                        <div class="form-group">
                            <label>Adresse mail</label>
                            <input type="email" wire:model = "newUser.email" class="form-control @error('newUser.email') is-invalid @enderror">
                            @error("newUser.email")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                            
                        <div class="d-flex">
                            <div class="form-group flex-grow-1 mr-2">
                                <label>Telephone 1</label>
                                <input type="text" wire:model = "newUser.telephone1" class="form-control @error('newUser.telephone1') is-invalid @enderror">
                            @error("newUser.telephone1")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                                
                            <div class="form-group flex-grow-1">
                                <label>Telephone 2</label>
                                <input type="text" wire:model = "newUser.telephone2" class="form-control">
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <label>Piece d'identité</label>
                                <select wire:model = "newUser.pieceIdentite" class="form-control @error('newUser.pieceIdentite') is-invalid @enderror">
                                    <option value="">------</option>
                                    <option value="CNI">CNI</option>
                                    <option value="PASSPORT">PASSPORT</option>
                                    <option value="PERMIS DE CONDUITE">PERMIS DE CONDUITE</option>
                                </select>
                                @error("newUser.pieceIdentite")
                                        <span class="text-danger">{{ $message }}</span>
                                @enderror
                        </div>
                            
                        <div class="form-group flex-grow-1">
                            <label>Numero de piece d'identite</label>
                            <input type="text" wire:model = "newUser.numeroPieceIdentite" class="form-control @error('newUser.numeroPieceIdentite') is-invalid @enderror">
                            @error("newUser.numeroPieceIdentite")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                            
                        <div class="form-group">
                            <label >Password</label>
                            <input type="text" wire:model = "newUser.password" class="form-control" disabled placeholder="Password">
                        </div>
                            
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Enregistrer</button>
                        <button type="button" class="btn btn-danger" wire:click='goToListUser()'>Retour à la liste d'utilisateur</button>
                    </div>
                </form>
            </div>
        </div>
        
        <script>
            window.addEventListener("showSuccessMessage", event=>{
                Swal.fire({
                    position: 'top-end',
                    icon: 'success',
                    title: 'Utilisateur creer avec succés!',
                    showConfirmButton: false,
                    timer: 3000
                })
            })
        </script>