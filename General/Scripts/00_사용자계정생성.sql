-- 한 줄 주석 (ctrl + /)
/* 범위 주석 (ctrl + shift + /) */

/* SQL실행
 * 1개 실행 : CTRL + ENTER
 * 여러개 실행 : (블록 지정 후) ALT + X
 */

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

/* 사용자 계정 생성 */
CREATE USER KH08_KTY IDENTIFIED BY "KH1234";

/* 생성된 사용자 계정별 사용 용량 지정 */
ALTER USER KH08_KTY DEFAULT TABLESPACE "USERS" QUOTA 200M ON "USERS";

/* 사용자 권한 부여 
 * - CONNECT : DB접속 권한
 * - RESOURCE : 기본 객체 8개 제어 권한 (TABLE,INDEX ...)
 * - CREATE VIEW : VIEW 객체 생성 권한
 */

GRANT CONNECT, RESOURCE, CREATE VIEW TO KH08_KTY;

