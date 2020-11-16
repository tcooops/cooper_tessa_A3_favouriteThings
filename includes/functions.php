<?php
    // include the file we just wrote - connect
     // like a JS import statement

    $result = array();

    function getAllUsers($pdo)
    {
        $query = "SELECT * FROM tbl_things";

        $runQuery = $pdo->query($query);

        while ($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo(json_encode($result));
    }

    function getSingleUser($pdo, $id)
    {
        $query = "SELECT * FROM profs WHERE id=" . $id . "";

        $runQuery = $pdo->query($query);

        while ($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo(json_encode($result));
    }
