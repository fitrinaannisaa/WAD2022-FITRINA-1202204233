<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Showrooms>
 */
class ShowroomsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => 'fortuner',
            'owner' => fake()->lastName(),
            'brand' => 'toyota',
            'purchase_date' => fake()->date(),
            'description' => fake()->paragraph(),
            'image' => 'car.jpg',
            'Status' => 'Lunas',
            'created_at' => now(),
        ];
    }
}
