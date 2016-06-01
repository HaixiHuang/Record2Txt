@echo off
for %%i in (*.mp3) do (
  ffmpeg -ss 00:00:00 -i %%i -codec pcm_s16le -ar 16000 %%i.wav
  @echo 正在语音转文字...
  converter v2.hivoice.cn 80 %%i.wav %%i.txt pcm16k
  del %%i.wav
  move %%i 结果
  move %%i.txt 结果
)
@echo 转换完毕，结果放在"结果"文件夹中
@pause