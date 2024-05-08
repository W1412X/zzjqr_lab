from PIL import Image
import os
green_min = (80, 130, 20)
green_max=(140,190,80)
green_behind_min=(32,48,48)
green_behind_max=(48,64,64)
green_other_min=(50,160,110)
green_other_max=(90,200,150)
#6eb52a
last=(0,0,0)
def cover_msg(image_path):
    img = Image.open(image_path)
    img = img.convert("RGB")
    pixels = img.load()
    for i in range(img.height):
        start_ind=-1
        pos=[]
        sum=0
        #2e3e3a
        for j in range(img.width):
            if ((green_min <= pixels[j, i] <= green_max and 0.8<=(pixels[j,i][1]/pixels[j,i][0])<=1.8 and 0.03<=(pixels[j,i][2]/pixels[j,i][1])<=0.5) or (green_behind_min<=pixels[j,i]<=green_behind_max and 1.35<=(pixels[j,i][1]/pixels[j,i][0])<=1.65 and 0.85<=(pixels[j,i][2]/pixels[j,i][1])<=1.15) or (green_other_min<=pixels[j,i]<=green_other_max and 1.8<=(pixels[j,i][1]/pixels[j,i][0])<=3.5 and 0.5<=(pixels[j,i][2]/pixels[j,i][1])<=0.9)) and start_ind==-1:
                start_ind=0
                sum=0
                pos.append((j,i))
            elif start_ind==0 and sum<=5:
                sum+=1
                pos.append((j,i))
            else:
                sum=10000
                start_ind=-1
        for p in pos:
            pixels[p[0],p[1]]=0
    img.save(image_path)
    print("ok")
for i in range(4,7):
    dir='ros/'+str(i)+'/resource'
    for img in os.listdir(dir):
        cover_msg(dir+'/'+img)