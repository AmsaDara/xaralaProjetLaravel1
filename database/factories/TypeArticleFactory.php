<?php

namespace Database\Factories;

use App\Models\TypeArticle;
use Illuminate\Database\Eloquent\Factories\Factory;

class TypeArticleFactory extends Factory
{
    /**
     * The name of the factory correspon  model
     *
     * @var string
     */
    protected $model = TypeArticle::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "nom" => array_rand([
                "Immobilier",
                "Television",
                "Salle",
                "Voiture"
            ], 1)
        ];
    }
}
