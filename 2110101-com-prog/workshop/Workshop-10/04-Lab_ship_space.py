import pygame as pg
import random
from os import path

img_dir = path.join('source/img')

# define screen resolution [width 480 , height 600 , FPS 60 ]
width = 480
height = 600
FPS = 60
# define colors
white = (255, 255, 255)
black = (0, 0, 0)
powerup = False
# initialize pg and create window
pg.init()
screen = pg.display.set_mode((width, height))
pg.display.set_caption("ShipSpace!")
clock = pg.time.Clock()

# load game graphics
bg = pg.image.load(path.join(img_dir, "space.png")).convert()
bg_rect = bg.get_rect()
ship_img = pg.image.load(path.join(img_dir, "Ship.png")).convert()
meteor_img = pg.image.load(path.join(img_dir, "meteor_med.png")).convert()
bullet_img = pg.image.load(path.join(img_dir, "red_bullet.png")).convert()
music_img = pg.image.load('source/BNK48/cherprang.png').convert()
#################################################################################################
# Class ที่เพิ่มเข้ามาใหม่ -> Ship , Meteor , Bullet ; Function ที่เพิ่มเข้ามาใหม่ -> newmeteor()

class Item(pg.sprite.Sprite):
    def __init__(self):
        pg.sprite.Sprite.__init__(self)
        self.image = pg.transform.scale(music_img, (50, 38))
        self.image.set_colorkey(black)
        self.rect = self.image.get_rect()
        self.rect.x = random.randrange(width - self.rect.width)
        self.rect.y = random.randrange(-100, -40)
        self.speedy = random.randrange(1, 8)
        self.speedx = 0
    def update(self):
        self.rect.x += self.speedx
        self.rect.y += self.speedy
        if self.rect.top > height + 10 or self.rect.left < -25 or self.rect.right > width + 20:
            self.rect.x = random.randrange(width - self.rect.width)
            self.rect.y = random.randrange(-100, -40)
            self.speedy = random.randrange(1, 8)
# Class ของผู้เล่นภายในมี method __init__ , update , shoot
class Ship(pg.sprite.Sprite):
    def __init__(self):
        pg.sprite.Sprite.__init__(self)
        self.image = pg.transform.scale(ship_img, (50, 38))
        self.image.set_colorkey(black)
        self.rect = self.image.get_rect()
        self.rect.centerx = width / 2
        self.rect.bottom = height - 10
        self.speedx = 0

    def update(self):
        self.speedx = 0
        keystate = pg.key.get_pressed()
        if keystate[pg.K_LEFT]:
            self.speedx = -8
        if keystate[pg.K_RIGHT]:
            self.speedx = 8
        self.rect.x += self.speedx
        if self.rect.right > width:
            self.rect.right = width
        if self.rect.left < 0:
            self.rect.left = 0
    def shoot(self):
        if powerup:
            bullet = Bullet(self.rect.centerx + 20, self.rect.top)
            bullet2 = Bullet(self.rect.centerx - 20, self.rect.top)
            all_sprites.add(bullet)
            bullets.add(bullet)
            all_sprites.add(bullet2)
            bullets.add(bullet2)
        else:
            bullet = Bullet(self.rect.centerx + 10, self.rect.top)
            all_sprites.add(bullet)
            bullets.add(bullet)
# Class ของของหินภายในมี method __init__ , update
class Meteor(pg.sprite.Sprite):
    def __init__(self):
        pg.sprite.Sprite.__init__(self)
        self.image = meteor_img
        self.image.set_colorkey(black)
        self.rect = self.image.get_rect()
        self.rect.x = random.randrange(width - self.rect.width)
        self.rect.y = random.randrange(-100, -40)
        self.speedy = random.randrange(1, 8)
        self.speedx = random.randrange(-3, 3)

    def update(self):
        self.rect.x += self.speedx
        self.rect.y += self.speedy
        if self.rect.top > height + 10 or self.rect.left < -25 or self.rect.right > width + 20:
            self.rect.x = random.randrange(width - self.rect.width)
            self.rect.y = random.randrange(-100, -40)
            self.speedy = random.randrange(1, 8)

# Class ของลูกกระสุนภายในมี method __init__ , update
class Bullet(pg.sprite.Sprite):
    def __init__(self, x, y):
        pg.sprite.Sprite.__init__(self)
        self.image = bullet_img
        self.image.set_colorkey(black)
        self.rect = self.image.get_rect()
        self.rect.bottom = y
        self.rect.centerx = x
        self.speedy = -10

    def update(self):
        self.rect.y += self.speedy
        # ทำลายลูกกระสุนทิ้งถ้าลูกกระสุนออกจากหน้าจอ
        if self.rect.bottom < 0:
            self.kill()

        

# function ที่สร้างหินขึ้นมา 1 ก้อน
def newmeteor():
    m = Meteor()
    all_sprites.add(m)
    meteors.add(m)
#################################################################################################

new_game = True

while True:

    # set ให้ตัวเกมส์แสดงผลด้วยความเร็วที่เหมาะสม
    clock.tick(FPS)

    if new_game:
        new_game = False

        #################################################################################################
        # TO DO 1-1 : สรา้ง sprite Group ให้กับ all_sprites, meteors, bullets, ship

        all_sprites = pg.sprite.Group()
        meteors = pg.sprite.Group()
        bullets = pg.sprite.Group()
        ship = pg.sprite.Group()
        items = pg.sprite.Group()
        # TO DO 1-2 : สร้าง Object ให้กับ ship
        myShip = Ship()
        item = Item()
        # TO DO 1-3 : เพิ่ม ship ลงใน all_sprites
        all_sprites.add(myShip)
        all_sprites.add(item)
        items.add(item)
        #################################################################################################
        # TO DO 2 : สร้าง Object Meteor ขึ้นมา 8 ก้อนโดยผ่านการเรียกใช้ฟังก์ชัน newmeteor()
        for i in range(8):
            newmeteor()



        #################################################################################################

    for event in pg.event.get():
        if event.type == pg.QUIT:
            pg.quit()
        #################################################################################################
        # TO DO 3 : ตรวจสอบว่าถ้ามีการกดปุ่ม spacebar (K_SPACE) ให้ ship เรียกฟังก์ชั่นสำหรับการยิงกระสุน

        keystate = pg.key.get_pressed()
        if keystate[pg.K_SPACE]:
            myShip.shoot()


        #################################################################################################

    # Update
    all_sprites.update()

    #################################################################################################
    # TO DO 5 : ตรวจสอบว่าลูกกระสุนชนหินหรือไม่
    # ถ้าชนให้สร้างหินขึ้นมาใหม่เท่ากับจำนวนที่ถูกชนไป
    hits = pg.sprite.groupcollide(bullets,meteors,True,True)
    if len(hits)>0:
        newmeteor()



    #################################################################################################
    # TO DO 6 : ตรวจสอบว่าหินชนยานผู้เล่นหรือไม่
    # ถ้าชนให้เริ่มเกมใหม่
    hits = pg.sprite.spritecollide(myShip,meteors,True)
    if len(hits)>0:
        new_game = True

    hits = pg.sprite.spritecollide(myShip,items,True)
    if len(hits)>0:
        powerup = True
    #################################################################################################
    # TO DO 4 : clear screen ด้วยสีดำ จากนั้น เอา bg ใส่ใน bg_rect
    screen.fill(black)
    screen.blit(bg,bg_rect)

    #################################################################################################
    # TO DO 7 : วาด element ใน all_sprites ลงใน screen
    all_sprites.draw(screen)
    #################################################################################################
    # after drawing everything, flip the display
    pg.display.flip()

pg.quit()
