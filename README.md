## src: https://github.com/JonathonLuiten/TrackEval
##   &   https://github.com/mikel-brostrom/Yolov5_DeepSort_Pytorch.git
## MOT_Evaluation

## Sửa GT trong thư mục TrackEval/data/gt/mot_challenge/MOT16-train/MOT16-02/gt/gt.txt
![image](https://user-images.githubusercontent.com/26327367/123037320-ace62680-d418-11eb-9731-2996c66d598d.png)
## Sửa video infor trong 2 files này (2 files có nội dung y hệt nhau)
MOT16_eval/TrackEval/data/gt/mot_challenge/MOT16-train/MOT16-02/gt/seqinfo.ini

MOT16_eval/TrackEval/data/gt/mot_challenge/MOT16-train/MOT16-02/seqinfo.ini

![image](https://user-images.githubusercontent.com/26327367/123242531-4e9a7000-d50c-11eb-9d33-36f221e9cc7b.png)

Thay seqLength bằng số frame lớn nhất trong file gt.txt của bạn 
Thay đổi W,H như của ảnh của bạn 
## Thay model predict result của bạn vào file này: 
MOT16_eval/TrackEval/data/trackers/mot_challenge/MOT16-train/ch_yolov5m_deep_sort/data/MOT16-02.txt

## Lệnh chạy 
$ ./MOT16_eval/eval.sh  


## File kết quả : (file csv & txt )
![image](https://user-images.githubusercontent.com/26327367/123239381-7e944400-d509-11eb-93d0-7608df39eb2f.png)


