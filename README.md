# Record2Txt
录音转文字

把录音文件（mp3)放到当前目录，去掉中文（不然结果会出现乱码，需要用高级文本工具打开才行)
双击：点我转当前目录下的mp3
等待转换
完成后，在结果目录里查看对应的文字文件


附：
高级使用者/开发者看看这里底层工具的使用,可以自己修改批处理文件

mp3转pcm:

ffmpeg -ss 00:00:00 -t 120 -i LOP.mp3 -codec pcm_s16le -ar 16000 output16.wav
          [开始时间]   [时长（单位秒）]  [输入文件]                [输出文件]

转换后，执行

converter v2.hivoice.cn 80 output16.wav output16.txt pcm16k
                          [输入文件] [输出文件] [pcm8k|pcm16k]
