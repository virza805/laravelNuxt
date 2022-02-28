<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request $request) {

        $request->validate([
            'username' => ['required', 'min:6', 'max:255', 'unique:users'],
            'email' => ['required', 'email', 'max:255'],
            'password' => ['required', 'min:8', 'max:255', 'confirmed']
            // 'password_again' => ['required', 'min:8', 'max:255', 'same:password'],
        ]);
        return $request->all();
    }
    public function login() {

    }
    public function logout() {

    }
}
