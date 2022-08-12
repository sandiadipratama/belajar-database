SHOW DATABASES;

CREATE DATABASE sekolah;

 CREATE TABLE siswa(
    -> nis CHAR(8) PRIMARY KEY,
    -> nama VARCHAR(100),
    -> jk CHAR(1),
    -> tmp_lahir VARCHAR(50),
    -> tgl_lahir DATE,
    -> alamat TEXT,
    -> kelas VARCHAR(10),
    -> nilai FLOAT);
Query OK, 0 rows affected (0.033 sec)

DESCRIBE siswa;

 SELECT *from siswa;
Empty set (0.055 sec)

 INSERT INTO siswa VALUES(
    -> '12100274',
    -> 'FIRDAUS WIGUNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70.97');
Query OK, 1 row affected (0.004 sec)

 SELECT * from siswa;
+----------+----------------+------+-----------+------------+----------+----------+-------+
| nis      | nama           | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+----------------+------+-----------+------------+----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 | 70.97 |
+----------+----------------+------+-----------+------------+----------+----------+-------+
1 row in set (0.001 sec)

 INSERT INTO siswa VALUES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [sekolah]> INSERT INTO siswa VALUES(
    -> '12100698',
    -> 'SANDI ADI PRATAMA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-02-17',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '80.99');
Query OK, 1 row affected (0.003 sec)

SELECT * from siswa;
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA    | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 | 70.97 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN  | 11-RPL-1 | 80.99 |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
2 rows in set (0.000 sec)

 INSERT INTO siswa VALUES(
    -> '12100147',
    -> 'DAVID LUTFI',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-05',
    -> 'CIDADAP',
    -> '11-RPL-1',
    -> '90.OO');
Query OK, 1 row affected, 1 warning (0.003 sec)

 SELECT * from  siswa;
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat   | kelas    | nilai |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
| 12100147 | DAVID LUTFI       | L    | SUBANG    | 2005-09-05 | CIDADAP  | 11-RPL-1 |    90 |
| 12100274 | FIRDAUS WIGUNA    | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 | 70.97 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN  | 11-RPL-1 | 80.99 |
+----------+-------------------+------+-----------+------------+----------+----------+-------+
3 rows in set (0.001 sec)

 INSERT INTO siswa VALUES(
    -> '12100218',
    -> 'EGI RENALDI',
    -> 'L',
    -> 'SUBANG',
    -> '2006-07-26',
    -> 'CIPUNAGARA',
    -> '11-RPL-1',
    -> '80.70');
Query OK, 1 row affected (0.004 sec)

 SELECT * from siswa;
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama              | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI       | L    | SUBANG    | 2005-09-05 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI       | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100274 | FIRDAUS WIGUNA    | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.97 |
| 12100698 | SANDI ADI PRATAMA | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+-------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)

INSERT INTO siswa VALUES(
    -> '12100451',
    -> 'MOHAMAD INDRA ERDIN',
    -> 'L',
    -> 'SUBANG',
    -> '2005-09-22',
    -> 'PAGADEN',
    -> '11-RPL-1',
    -> '75.05');
Query OK, 1 row affected (0.004 sec)

SELECT * from siswa;
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI         | L    | SUBANG    | 2005-09-05 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI         | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100274 | FIRDAUS WIGUNA      | L    | SUBANG    | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.97 |
| 12100451 | MOHAMAD INDRA ERDIN | L    | SUBANG    | 2005-09-22 | PAGADEN    | 11-RPL-1 | 75.05 |
| 12100698 | SANDI ADI PRATAMA   | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.001 sec)

UPDATE siswa SET
    -> tmp_lahir="BANDUNG"
    -> WHERE
    -> nis="12100274";
Query OK, 1 row affected (0.003 sec)

SELECT * from siswa;
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI         | L    | SUBANG    | 2005-09-05 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI         | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100274 | FIRDAUS WIGUNA      | L    | BANDUNG   | 2005-08-17 | KALIJATI   | 11-RPL-1 | 70.97 |
| 12100451 | MOHAMAD INDRA ERDIN | L    | SUBANG    | 2005-09-22 | PAGADEN    | 11-RPL-1 | 75.05 |
| 12100698 | SANDI ADI PRATAMA   | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.000 sec)

UPDATE siswa SET
    -> tgl_lahir="2005-05-05",
    -> alamat="BINONG"
    -> WHERE
    -> nis="12100274";
Query OK, 1 row affected (0.002 sec)

SELECT * from siswa;
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI         | L    | SUBANG    | 2005-09-05 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI         | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100274 | FIRDAUS WIGUNA      | L    | BANDUNG   | 2005-05-05 | BINONG     | 11-RPL-1 | 70.97 |
| 12100451 | MOHAMAD INDRA ERDIN | L    | SUBANG    | 2005-09-22 | PAGADEN    | 11-RPL-1 | 75.05 |
| 12100698 | SANDI ADI PRATAMA   | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.001 sec)

 UPDATE siswa SET
    -> tgl_lahir="2005-09-16"
    -> WHERE
    -> nis="12100147";
Query OK, 1 row affected (0.002 sec)

SELECT * from siswa;
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI         | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI         | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100274 | FIRDAUS WIGUNA      | L    | BANDUNG   | 2005-05-05 | BINONG     | 11-RPL-1 | 70.97 |
| 12100451 | MOHAMAD INDRA ERDIN | L    | SUBANG    | 2005-09-22 | PAGADEN    | 11-RPL-1 | 75.05 |
| 12100698 | SANDI ADI PRATAMA   | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
5 rows in set (0.001 sec)

DELETE FROM
    -> siswa WHERE
    -> nis="12100274";
Query OK, 1 row affected (0.003 sec)

SELECT * from siswa;
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| nis      | nama                | jk   | tmp_lahir | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
| 12100147 | DAVID LUTFI         | L    | SUBANG    | 2005-09-16 | CIDADAP    | 11-RPL-1 |    90 |
| 12100218 | EGI RENALDI         | L    | SUBANG    | 2006-07-26 | CIPUNAGARA | 11-RPL-1 |  80.7 |
| 12100451 | MOHAMAD INDRA ERDIN | L    | SUBANG    | 2005-09-22 | PAGADEN    | 11-RPL-1 | 75.05 |
| 12100698 | SANDI ADI PRATAMA   | L    | SUBANG    | 2005-02-17 | PAGADEN    | 11-RPL-1 | 80.99 |
+----------+---------------------+------+-----------+------------+------------+----------+-------+
4 rows in set (0.001 sec)