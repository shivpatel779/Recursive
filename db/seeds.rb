#create Goal by CEO
goal = Goal.create(title: "Close $1mn revenue by Q1", progress: "0%")

# VP Sales who reports to the CEO will write a goal "Get 1000 demoes by Q1"
goal.children.create(title: "Get 1000 demoes by Q1", progress: "0%")

#Sales Director of (say East zone) who reports to the will break his manager (VP Sales Goal) and write a goal "Get 200 demoes from East Zone by Q1"
goal.children.first.children.create(title: "Get 200 demoes from East Zone by Q1", progress: "0%")
goal.children.first.children.create(title: "Get 700 demoes from West Zone by Q1", progress: "0%")


goal.children.create(title: "Get 1 Lakh visitors in our website by Q1", progress: "0%")