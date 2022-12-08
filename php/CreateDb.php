<!-- Names: Jack Zhang, Allison Nevias
Class: CS3265 Database Management Systems
Date: December 5, 2022
Project: Project Phase 3 -->

<?php
class DB
{
        public $servername;
        public $username;
        public $password;
        public $dbname;
        public $tablename;
        public $con;


        // class constructor
    public function __construct(
        $dbname = "AMAZON",
        $tablename = "PRODUCT",
        $servername = "localhost",
        $username = "root",
        $password = ""
    )
    {
      $this->dbname = $dbname;
      $this->tablename = $tablename;
      $this->servername = $servername;
      $this->username = $username;
      $this->password = $password;

      // create connection
        $this->con = mysqli_connect("localhost", "root", "", "AMAZON");

        // check connection
        if (!$this->con){
            die("Connection failed : " . mysqli_connect_error());
        }
    }

    // get product from the database
    public function getData(){
        $sql = "SELECT * FROM $this->tablename";

        $result = mysqli_query($this->con, $sql);

        if(mysqli_num_rows($result) > 0){
            return $result;
        }
    }
}