#ifndef Errors
#define Errors

//+------------------------------------------------------------------+
//|                                                       Errors.mqh |
//|                                               Alexey Volchanskiy |
//|                                         https://mql.gnomio.com/  |
//+------------------------------------------------------------------+
#property copyright "Alexey Volchanskiy"
#property link      "http://www..ru"
#property strict

#include <stderror.mqh>
#include <stdlib.mqh>

// ������ ��� ��������� ������ � ���������� ������ � ���������
// ��� ������ ������������, �.�. ���������� �� ������
string GetMyLastError(int &err)
{
   err = GetLastError();
   string serr = ErrorDescription(err);
   ResetLastError();
   return(serr);
}

// ������ ��� ��������� ������ � ���������� ������ � ���������
string GetMyLastError()
{
   int err = GetLastError();
   string serr = ErrorDescription(err);
   ResetLastError();
   return(serr);
}
#endif