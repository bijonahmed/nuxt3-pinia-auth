<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Http\Request;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     */
    protected function redirectTo($request)
    {

        if (!$request->expectsJson()) {
            // Return a JSON response for non-JSON requests
            echo response()->json(['error' => 'Invalid Request'], 401);
            exit;
            
            //return response()->json(['error' => 'Session expired'], 401);
        }
    }
}
