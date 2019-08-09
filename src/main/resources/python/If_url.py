import requests
import re
import pymysql
import threading
import sys

class ThreadCrawl(threading.Thread):  # ThreadCrawl类继承了Threading.Thread类

    def __init__(self,id,url):  # 子类特有属性， queue
        threading.Thread.__init__(self)
        self.url =url
        self.id=str(id)

    def run(self):
        headers = {
            'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
            'accept-encoding': 'gzip, deflate, br',
            'accept-language': 'zh-CN,zh;q=0.9',
            'cache-control': 'max-age=0',
            'user-agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36',
            'upgrade-insecure-requests': '1'
        }

        proxies = {
            "http": "http://47.88.88.89:24001",
            "https": "http://47.88.88.89:24001",
        }
        r = requests.get(url=self.url,headers=headers,proxies=proxies, verify=False, timeout=30)
        if re.findall('<img src="https://images-na.ssl-images-amazon.com/images/G/01/x-locale/common/kailey-kitty._V192239871_.gif"',r.text) != []:
            # 无效连接
            updateState("2",self.id)
        else:
            #有效链接
            updateState("1",self.id)

config={
    "host":"127.0.0.1",
    "user":"root",
    "password":"root",
    "database":"test"
}
# 打开数据库连接
db = pymysql.connect(**config)

def getUrl(userid):
    # 使用cursor()方法获取操作游标
    cursor = db.cursor()
    # SQL 查询语句
    sql = "select id, url, state,userid from tb_if_url where state=0 and userid ="+userid+""
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        data = cursor.fetchall()
        return data
    except:
        print("Error: unable to fetch data")



def updateState(state,id):
    # 使用cursor()方法获取操作游标
    cursor = db.cursor()
    # SQL 查询语句
    sql = "update test.tb_if_url set state = '"+state+"' where id = '"+id+"';"
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 提交到数据库执行
        db.commit()
    except:
        # 发生错误时回滚
        db.rollback()


if __name__ == "__main__":
    if len(sys.argv)>=2:
        #根据用户 ID 查询
        data = getUrl(str(sys.argv[1]))
        print(data)
        threadList = []
        for row in data:
            print(row)
            threadCrawl = ThreadCrawl(row[0], row[1])
            threadList.append(threadCrawl)
            threadCrawl.start()
        print("线程启动完毕")
        for thread in threadList:
            thread.join()
        print("关闭数据库")
        db.close()
        sys.exit(1)