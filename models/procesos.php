<?php
//Convertir en una sola funcion
    class CRUD{
        public function select($query){
            $rows = null;
            $modelo = new ConexionDB();
            $conexion = $modelo->get_conexion();
            $stm = $conexion->prepare($query);
            $stm->execute();

            while ($result = $stm->fetch()){
                $rows[] = $result;
            }
            return $rows;
        }
        public function consultasUpdateInsertDelete($query){
            $modelo = new ConexionDB();
            $conexion = $modelo->get_conexion();
            $stm = $conexion->prepare($query);
            if(!$stm){
                return 0;
            }else{
                $stm->execute();
                return 1;
            }
        }
        
    }


?>