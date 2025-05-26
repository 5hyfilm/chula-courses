# Lab_BNK48 
import pygame as pg
import math

def point(x1, x2, y1, y2):
    dis = math.sqrt(((x1-x2)**2) + ((y1-y2)**2))
    return dis

# TODO 1 : กำหนด width : 1000 , height : 600 และ FPS : 60
width = 1000
height = 600
FPS = 60

# TODO 2 : กำหนดค่าสีดังนี้ pink : (197,142,195) , white : (255,255,255)
pink = [197, 142, 195]
white = [255, 255, 255]
red = [255, 0, 0]
green = [0, 255, 0]
blue = [0, 0, 255]


# TODO 3 : กำหนดความเร็วให้กับ member แต่ละคน [ 3 member ]
ball1_speed = [2,2]
ball2_speed = [-3, 4]
ball3_speed = [3, -2]
 
# TODO 4 : initialize pygame variable and create clock
pg.init()
clock = pg.time.Clock()
running = True

# TODO 5 : create screen [pygame.display.set_mode] 
# and set caption [pygame.display.set_caption] => "BNK_BALL (Heavy Collision)"
screen = pg.display.set_mode((width,height))
pg.display.set_caption('BNK_BALL (Heavy Collision)')

# TODO 6
#Load sound [change your sound filepath according to your computer]
pg.mixer.init()
pg.mixer.music.load("workshop/Workshop1-BNK_BALL_student/source/sound.mp3")
pg.mixer.music.play(-1, 0.0)

# ใช้คำสั่ง soundeffect.play() เพื่อเล่นเสียง effect ตอนลูกบอลชนกัน
soundeffect = pg.mixer.Sound("workshop/Workshop1-BNK_BALL_student/source/effect.wav")

# Choose 3 members from BNK48 and create pygame object from  get_rect
# [ load , resize , get_rect ]

# Member 1 [size : (150 , 150) , center : (500 , 250) ]
ball1_img_load = pg.image.load("workshop/Workshop1-BNK_BALL_student/source/BNK48/Wee_cc.png").convert_alpha()
ball1_img = pg.transform.scale(ball1_img_load, (150, 150))
ball1_rect = ball1_img.get_rect(center=(500,250))

# TODO 7 : create object with attribute in each comment
# Member 2 [size : (100 , 100) , center : (250 , 120)]
ball2_img_load = pg.image.load("workshop/Workshop1-BNK_BALL_student/source/BNK48/Cherprang_cc.png").convert_alpha()
ball2_img = pg.transform.scale(ball2_img_load, (100, 100))
ball2_rect = ball2_img.get_rect(center=(250,120))

# Member 3 [size : (120 , 120) , center : (800 , 400)]
ball3_img_load = pg.image.load("workshop/Workshop1-BNK_BALL_student/source/BNK48/Orn_cc.png").convert_alpha()
ball3_img = pg.transform.scale(ball3_img_load, (120, 120))
ball3_rect = ball3_img.get_rect(center=(800,400))

# screen.fill(pink)

while running:
    # TODO 8 : set ให้ตัวเกมส์แสดงผลด้วยความเร็วที่เหมาะสม [clock.tick(...)]
    clock.tick(FPS)

    for event in pg.event.get():
        if event.type == pg.QUIT:
            running=False
            pg.quit()

    if running:
        # TODO 9 :ใส่สี background สีชมพู (screen.fill(...))
        a = screen.fill(pink)
       
        # TODO 10 : ให้ member ทั้ง 3 คนเคลื่อนที่ตามทิศทางและความเร็วเป็นไปตาม speed ของแต่ละคน
        ball1_rect = ball1_rect.move(ball1_speed)
        ball2_rect = ball2_rect.move(ball2_speed)
        ball3_rect = ball3_rect.move(ball3_speed)

        
        # TODO 11 : วาด text คำว่า "Heavy Collision" [size : 150 , center :(width/2 , height/3), สีขาว]
        font_name = pg.font.match_font('arial')  # กำหนดชื่อ Font

        font1 = pg.font.Font(font_name, 150)  # กำหนดขนาด font
        text_surface1 = font1.render('Heavy Collision', True, white)
        text_rect1 = text_surface1.get_rect()
        text_rect1.midtop = (width/2, height/3)
        screen.blit(text_surface1, text_rect1)

        # TODO 12 : วาด text รหัสนิสิต ลงไป ข้างใต้คำว่า "Heavy Collision" [size : 100 ,center :(width/2 , height/1.5), สีขาว]
        # [ขนาดและตำแหน่งสามารถปรับได้ตามความเหมาะสม]
        font2 = pg.font.Font(font_name, 50)
        text_surface2 = font2.render('6432154921 + 6431328621', True, white)
        text_rect2 = text_surface2.get_rect()
        text_rect2.midtop = (width/2 , height/1.5)
        screen.blit(text_surface2, text_rect2)

        # TODO 13 : เขียนเงื่อนไขไม่ให้ตกกรอบทุกด้านให้กับ member ทั้ง 3 คน
        if ball1_rect.left < 0 or ball1_rect.right > width:
            ball1_speed[0] = -ball1_speed[0]
            soundeffect.play()
        if ball1_rect.top < 0 or ball1_rect.bottom > height:
            ball1_speed[1] = -ball1_speed[1]
            soundeffect.play()
        if ball2_rect.left < 0 or ball2_rect.right > width:
            ball2_speed[0] = -ball2_speed[0]
            soundeffect.play()
        if ball2_rect.top < 0 or ball2_rect.bottom > height:
            ball2_speed[1] = -ball2_speed[1]
            soundeffect.play()
        if ball3_rect.left < 0 or ball3_rect.right > width:
            ball3_speed[0] = -ball3_speed[0]
            soundeffect.play()
        if ball3_rect.top < 0 or ball3_rect.bottom > height:
            ball3_speed[1] = -ball3_speed[1]
            soundeffect.play()
        
        #
        ball1_x, ball1_y = (ball1_rect.left + ball1_rect.right)/2, (ball1_rect.top + ball1_rect.bottom)/2
        print('Ball1: ', ball1_x, ball1_y)
        ball2_x, ball2_y = (ball2_rect.left + ball2_rect.right)/2, (ball2_rect.top + ball2_rect.bottom)/2
        print('Ball2: ',ball2_x, ball2_y)
        ball3_x, ball3_y = (ball3_rect.left + ball3_rect.right)/2, (ball3_rect.top + ball3_rect.bottom)/2
        print('Ball3: ',ball3_x, ball3_y)
        # Special point ทำให้ลูกบอลชนกันแล้วเด้งในทิศตรงกันข้าม
        if point(ball1_x, ball2_x, ball1_y, ball2_y) <= 125:
            soundeffect.play()
            ball1_img = pg.transform.scale(ball2_img_load, (150, 150))
            ball2_img = pg.transform.scale(ball1_img_load, (100, 100))
            ball1_speed[0] = -ball1_speed[0]
            ball1_speed[1] = -ball1_speed[1]
            ball2_speed[0] = -ball2_speed[0]
            ball2_speed[1] = -ball2_speed[1]
        if point(ball1_x, ball3_x, ball1_y, ball3_y) <= 135:
            soundeffect.play()
            ball1_img = pg.transform.scale(ball3_img_load, (150, 150))
            ball3_img = pg.transform.scale(ball1_img_load, (120, 120))
            ball1_speed[0] = -ball1_speed[0]
            ball1_speed[1] = -ball1_speed[1]
            ball3_speed[0] = -ball3_speed[0]
            ball3_speed[1] = -ball3_speed[1]
        if point(ball3_x, ball2_x, ball3_y, ball2_y) <= 110:
            soundeffect.play()
            ball3_img = pg.transform.scale(ball2_img_load, (120, 120))
            ball2_img = pg.transform.scale(ball3_img_load, (100, 100))
            ball3_speed[0] = -ball3_speed[0]
            ball3_speed[1] = -ball3_speed[1]
            ball2_speed[0] = -ball2_speed[0]
            ball2_speed[1] = -ball2_speed[1]

        ################################################

        # TODO 14 : เอาภาพของ member แต่ละคนใส่ลงใน object ของตนเอง
        screen.blit(ball1_img, ball1_rect)
        screen.blit(ball2_img, ball2_rect)
        screen.blit(ball3_img, ball3_rect)
        
        ##########################################################

        pg.display.flip()