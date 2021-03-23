<?php

namespace App;
use Laravel\Passport\HasApiTokens;
use App\Notifications\UserResetPassword;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class RolePermission extends Model
{
    use  HasApiTokens, Notifiable;


    protected $table = 'role_permissions';
    
	public $timestamps = false;


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role_id', 'dashboard','restaurant' ,'delivery_poeple','add_admins','restaurant_banner','roles','user','setting'
    ];
}
