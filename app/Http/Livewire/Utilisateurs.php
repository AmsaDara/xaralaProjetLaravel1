<?php

namespace App\Http\Livewire;

use App\Models\User;
use Illuminate\Validation\Rule;
use Laravel\Ui\Presets\Bootstrap;
use Livewire\Component;
use Livewire\WithPagination;

class Utilisateurs extends Component
{
    use WithPagination;
    
    protected $paginationTheme = "bootstrap";
    
    public $currentPage = PAGELIST;
    
    public $newUser= [];
    
    public $editUser= [];
    
    public function render()
    {
        return view('livewire.utilisateurs.index',[
            "users" => User::latest()->paginate(5)
        ])
        ->extends("layouts.master")
        ->section("contenu");
    }
    
    public function rules(){
        if($this->currentPage == PAGEEDITFORM){ 
              //Rule::unique("users", "email")->ignore($this->editUser['id'])
            return [
                'editUser.nom' => 'required',
                'editUser.prenom' => 'required',
                'editUser.email' => ['required', 'email', Rule::unique("users", "email")->ignore($this->editUser['id'])],
                'editUser.telephone1' => ['required', 'numeric', Rule::unique("users", "telephone1")->ignore($this->editUser['id'])],
                'editUser.pieceIdentite' => 'required',
                'editUser.sexe' => 'required',
                'editUser.numeroPieceIdentite' => ['required', Rule::unique("users", "numeroPieceIdentite")->ignore($this->editUser['id'])],
            ];
        }
        
            return [
                'newUser.nom' => 'required',
                'newUser.prenom' => 'required',
                'newUser.email' => 'required|email|unique:users,email',
                'newUser.telephone1' => 'required|numeric|unique:users,telephone1',
                'newUser.pieceIdentite' => 'required',
                'newUser.sexe' => 'required',
                'newUser.numeroPieceIdentite' => 'required|unique:users,numeroPieceIdentite',
            ];  
        
    }
    
    public function goToAddUser() {
        $this->currentPage = PAGECREATEFORM;
    }
    
    public function goToEditUser($id) {
        $this->editUser = User::find($id)->toArray();
        $this->currentPage = PAGEEDITFORM;
    }
    
    public function goToListUser() {
        $this->currentPage = PAGELIST;
    }
    
    public function addUser() {
        //vérifier si les données sont valide
        $validationAttributes = $this->validate();
        
        $validationAttributes["newUser"]["password"] = "password";
        
        //Ajouter un nouvel utilisateur
        User::create($validationAttributes["newUser"]);
        
        $this->newUser = [];
        
        $this->dispatchBrowserEvent("showSuccessMessage", ["message"=>"Utilisateur creer avec succés!"]);
    }
    
    public function updateUser(){
        //vérifier si les données sont valide
        $validationAttributes = $this->validate();
        
        User::find($this->editUser["id"])->update($validationAttributes["editUser"]);
        
        $this->dispatchBrowserEvent("showSuccessMessage", ["message"=>"Utilisateur modifier avec succés!"]);
    }
    
    public function confirmDelete($name, $id){
        $this->dispatchBrowserEvent("showConfirmMessage", ["message"=>"Vous etes sur le point de supprimer $name de la liste des utilisateurs. Voulez-vous continuer ?",
                    "data" => [
                        "user_id" => $id
                    ]
        ]);
    }
    
    public function deleteUser($id){
        User::destroy($id);
        
        $this->dispatchBrowserEvent("showSupprimMessage", ["message"=>"Utilisateur supprimé avec succès!"]);
    }

}



