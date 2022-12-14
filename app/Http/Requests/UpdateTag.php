<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class UpdateTag extends FormRequest
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
    // Rule::unique('table_name', 'column_name')->ignore($request->id)
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'title' => 'required|max:75',
            // 'title' => ['required','max:75', Rule::unique('tags', 'title')->ignore($this->id)],
            'content' => 'required',
            'meta_title' => 'required',
        ];
    }
}
