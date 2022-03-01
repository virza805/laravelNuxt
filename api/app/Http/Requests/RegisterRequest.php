<?php
// use App\Http\Requests\RegisterRequest;
namespace App\Http\Requests;

use App\Rules\AllLowerCase;
use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'username' => ['required', 'min:6', 'max:255', 'unique:users', new AllLowerCase(), 'alpha_dash'],
            'email' => ['required', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'min:8', 'max:255', 'confirmed']
        ];
    }
}
