cpu "8085.tbl"
hof "int8"
org 9000h
GTHEX: EQU 030EH
HXDSP: EQU 034FH
OUTPUT:EQU 0389H
CLEAR: EQU 02BEH
RDKBD: EQU 03BAH

call gthex
inr d
inr e
call hxdsp

mvi b,00
mvi a,00
CALL OUTPUT
call rdkbd
rst 5