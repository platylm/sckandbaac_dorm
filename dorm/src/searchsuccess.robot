*** Settings ***
Library    SeleniumLibrary
# Test Teardown    ปิดหน้าเบราเซอร์

*** Variables ***
${URL}     localhost:8080/sckdorm

*** Test Cases ***
ผู้ใช้สามารถค้นหาหอพักได้
    เข้าเว็บไซค์หาหอพัก
    พิมพ์ค้นหาชื่อหอพัก
    กดค้นหา
    แสดงรายชื่อหอพักที่ต้องการ
    คลิกหอพักแสดงที่ออกมาอยู่บนสุด
    แสดงรายละเอียดหอพัก

*** Keywords ***
เข้าเว็บไซค์หาหอพัก
    Open Browser    ${URL}    chrome
    Wait Until Page Contains     SCKDORM

พิมพ์ค้นหาชื่อหอพัก
    Input Text    id=search_textbox    ละออเพลส
   
กดค้นหา
    Click Element    searchbutton

แสดงรายชื่อหอพักที่ต้องการ
     Wait Until Page Contains    ละออเพลส
    
คลิกหอพักแสดงที่ออกมาอยู่บนสุด
    Click Element    id=dorm_detail_1

แสดงรายละเอียดหอพัก
    Wait Until Page Contains    ละออเพลส
    Wait Until Page Contains    ราคา 6,300.00 บาท
    Wait Until Page Contains    สิ่งอำนวยความสะดวก
    Wait Until Page Contains    เบอร์โทรติดต่อ
    Wait Until Page Contains    ที่อยู่




   

