@echo off
for %%i in (*.mp3) do (
  ffmpeg -ss 00:00:00 -i %%i -codec pcm_s16le -ar 16000 %%i.wav
  @echo ��������ת����...
  converter v2.hivoice.cn 80 %%i.wav %%i.txt pcm16k
  del %%i.wav
  move %%i ���
  move %%i.txt ���
)
@echo ת����ϣ��������"���"�ļ�����
@pause