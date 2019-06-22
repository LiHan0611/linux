#! /usr/bin/python

# 前景色: 30（黑色）、31（红色）、32（绿色）、 33（黄色）、34（蓝色）、35（梅色）、36（青色）、37（白色）
d = { 'black':    30, 
      'red':      31,
      'green':    32,
      'yellow':   33,
      'blue':     34,
      'prunosus': 35,
      'cyan':     36,
      'white':    37,
    }
      
def printc(s, color = 'green'):    
    print('\033[0;{}m{}\033[0;30m'.format(d[color], s))
