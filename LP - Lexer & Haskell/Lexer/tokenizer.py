# -*- coding: utf-8 -*-
"""tokenizer.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/github/Iewandowski/LP_Tokenizer/blob/main/tokenizer.ipynb
"""

import numpy as np

from typing import List
list = []
var = ""
others = {'vars': ["IDENT", 1],
          'num': ["INT_LIT", 2]
          }


tokens = {"(": ["LPAREN", 3], 
          ")": ["RPAREN", 4], 
          "+": ["ADD_OP", 5], 
          "-": ["SUB_OP", 6], 
          "*": ["MUL_OP", 7], 
          "/": ["DIV_OP", 8], 
          ">": ["GT_OP", 9],
          "<": ["LT_OP", 10], 
          "==": ["EQ_OP", 11], 
          ":=": ["ASSIGN_OP", 12],
          "=": ["EQ_OP", 13]
          }

with open('line.txt') as file:
  for linha in file:
     txt = linha
     texto = txt.replace(" ", "")
  for word in texto:
    list.append(word)
  for i in range(len(list)):
    token = tokens.keys()
    current = list[i]
    if i == 0:
      last = list[i]
    else:
      last = list[i - 1] + list[i]
    if i == len(list) - 1:      
      next = list[i]
      current_next = list[i]
    elif i == len(list) - 2:
      both_next = list[i]
    else:
      next = list[i + 1]
      current_next = list[i] + list[i + 1]
      both_next = list[i + 1] + list[i + 2]
    if current not in token and last not in token and current_next not in token:
      var = var + current
    if next in token or both_next in token or current_next in token or i == len(list) - 1:
      if var != "":
        if var.isnumeric():
          print("(", var, ",", others.get('num'), ")")
        elif var.isalpha:
          print("(", var, ",", others.get('vars'), ")")
        var = ""
    if current in token and last not in token:
          print("('", list[i], "',", tokens.get(str(list[i])), ")")
    if current_next in token:
          print("('", current_next, "',", tokens.get(str(current_next)), ")")