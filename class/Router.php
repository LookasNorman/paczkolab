<?php


class Router
{

    public function getRequestMethod()
    {
        if(isset($_REQUEST['_method'])){
            return $_REQUEST['_method'];
        }
        return $_SERVER['REQUEST_METHOD'];
    }

    public function getClassAndId()
    {
        //get class name from URI
        $uriPathInfo = $_SERVER['REQUEST_URI'];
        //explode path info
        $path = explode('/', $uriPathInfo);
        if (isset($path[2])){
            $requestClass = $path[2];
            $requestClass = preg_replace('#[^0-9a-zA-Z]#', '', $requestClass);//remove all non alfanum chars from request
            $className = ucfirst(strtolower($requestClass));
        } else {
            $className = null;
        }
        $pathId = isset($path[3]) ? $path[3] : null;

        $classAndId = [
            'className' => $className,
            'pathId' => $pathId
        ];
        return $classAndId;
    }
}