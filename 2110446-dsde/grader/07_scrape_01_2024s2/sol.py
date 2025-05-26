from bs4 import BeautifulSoup as bs

def Q1(file_path):  # DO NOT modify this line
    with open(file_path, encoding="utf-8") as f:
        html_content = f.read()
    soup = bs(html_content, 'lxml')

    # ดึงข้อมูลวันพระทั้งหมด
    buddhist_days = soup.find_all(attrs={'class': 'bud-day'})
    
    # รายชื่อวันในสัปดาห์
    weekdays = ['วันจันทร์', 'วันอังคาร', 'วันพุธ', 'วันพฤหัสบดี', 'วันศุกร์', 'วันเสาร์', 'วันอาทิตย์']
    count = [0] * 7

    # ตรวจสอบแต่ละวันพระว่าอยู่ในวันไหน
    for element in buddhist_days:
        text = element.get_text(strip=True)
        for i in range(7):
            if weekdays[i] in text:
                count[i] += 1
    return count

def Q2(file_path):  # DO NOT modify this line
    with open(file_path, encoding="utf-8") as f:
        html_content = f.read()
    soup = bs(html_content, "lxml")

    # ค้นหาวันวิสาขบูชาโดยค้นหาทุก <div> ที่เกี่ยวข้อง
    for tag in soup.find_all("div", class_="bud-day-col"):
        if "วิสาขบูชา" in tag.get_text(strip=True):
            # หา <div> ก่อนหน้า ซึ่งเป็นวันที่ของวันวิสาขบูชา
            parent_div = tag.find_parent("div", class_="bud-day")
            if parent_div:
                date_element = parent_div.find("div", class_="bud-day-col")
                return date_element.get_text(strip=True) if date_element else None

    return None  # ถ้าไม่พบวันวิสาขบูชา

exec(input().strip()) 