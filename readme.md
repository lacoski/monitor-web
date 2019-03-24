# Script giám sát VPS đơn giản (CentOS 7)
---

## Tổng quan

Script giám sát Cpu Idle, ram sử dụng, swap sử dụng, load trung bình, và số kết nối tới

## Cách sử dụng

Cấp quyền thực thi

```
chmod +x src/
```

Chạy script

```
./src/run.sh &
```

Dừng script

```
./src/stop
```

Log tại đường dẫn `/var/log/monitor/monitor.log`

![](/images/log.png)

Thể hiện
- CPU rảnh rỗi: 97.9%
- Ram sử dụng 335M trên 1.8G
- Swap sử dụng 45M trên 2G
- Load trung bình 1 phút, 5 phút, 15 phút lần lượt 0.00 0.01 0.05