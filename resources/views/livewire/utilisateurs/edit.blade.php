<div class="row p-4 pt-5">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title"><i class="fas fa-user-plus fa-2x"></i>Formulaire d'édition utilisateur</h3>
                </div>

                <form role="form" wire:submit.prevent="updateUser()">
                    <div class="card-body">
                        <div class="d-flex">
                            <div class="form-group flex-grow-1 mr-2">
                            <label>Nom</label>
                            <input type="text" wire:model = "editUser.nom" class="form-control @error('editUser.nom') is-invalid @enderror">
                            @error("editUser.nom")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                                
                            <div class="form-group flex-grow-1">
                            <label>Prenom</label>
                            <input type="text" wire:model = "editUser.prenom" class="form-control @error('editUser.prenom') is-invalid @enderror">
                            @error("editUser.prenom")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <label>Sexe</label>
                                <select wire:model = "editUser.sexe" class="form-control @error('editUser.sexe') is-invalid @enderror">
                                    <option value="">------</option>
                                    <option value=1>Homme</option>
                                    <option value=0>Femme</option>
                                </select>
                                @error("editUser.sexe")
                                        <span class="text-danger">{{ $message }}</span>
                                @enderror
                        </div>
                            
                        <div class="form-group">
                            <label>Adresse mail</label>
                            <input type="email" wire:model = "editUser.email" class="form-control @error('editUser.email') is-invalid @enderror">
                            @error("editUser.email")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                            
                        <div class="d-flex">
                            <div class="form-group flex-grow-1 mr-2">
                                <label>Telephone 1</label>
                                <input type="text" wire:model = "editUser.telephone1" class="form-control @error('editUser.telephone1') is-invalid @enderror">
                            @error("editUser.telephone1")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                            </div>
                                
                            <div class="form-group flex-grow-1">
                                <label>Telephone 2</label>
                                <input type="text" wire:model = "editUser.telephone2" class="form-control">
                            </div>
                        </div>
                            
                        <div class="form-group">
                            <label>Piece d'identité</label>
                                <select wire:model = "editUser.pieceIdentite" class="form-control @error('editUser.pieceIdentite') is-invalid @enderror">
                                    <option value="">------</option>
                                    <option value="CNI">CNI</option>
                                    <option value="PASSPORT">PASSPORT</option>
                                    <option value="PERMIS DE CONDUITE">PERMIS DE CONDUITE</option>
                                </select>
                                @error("editUser.pieceIdentite")
                                        <span class="text-danger">{{ $message }}</span>
                                @enderror
                        </div>
                            
                        <div class="form-group flex-grow-1">
                            <label>Numero de piece d'identite</label>
                            <input type="text" wire:model = "editUser.numeroPieceIdentite" class="form-control @error('editUser.numeroPieceIdentite') is-invalid @enderror">
                            @error("editUser.numeroPieceIdentite")
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                            
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Appliquer les modifications</button>
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
                    title: 'Utilisateur modifier avec succés!',
                    showConfirmButton: false,
                    timer: 5000
                })
            })
        </script>