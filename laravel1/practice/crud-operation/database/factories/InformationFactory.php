<?php

namespace Database\Factories;

use App\Models\Information;
use Illuminate\Database\Eloquent\Factories\Factory;

class InformationFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Information::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'age' => 25,
            'dob' => now(),
            'blood_group' => 'O+ve'
            ];
    }
}
