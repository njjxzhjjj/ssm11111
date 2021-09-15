<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/15
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<html>
<head>
    <title>第一个 Vue demo</title>
</head>
<body>
<div>
    学习插值表达式{{}}
    Vue常用于 单个页面项目中，什么叫做单个页面项目，常用于手机移动端，指的是整个项目中只有一个页面
    通过错点来跳转。没有a标签，这个错点的跳转叫做 路由。
    单个页面的优缺点：
    优点：都是HTML 代码运行流畅，可以有很多的组件。可以重复使用
    缺点：不利于seo百度的收录

</div>
   <h1>讲解jQuery和我们的 vue的不同</h1>
   <div>
       jquery:他是dom 驱动的 ，所有看到的页面都要一行一行的把代码写出来，不是自动的是手动的
       <h2 id="jq-helloword">
           <%--//对比一下，在div中插入数据你好， 世界--%>

       </h2>
   </div>
<div id="app">
    vue因为是单页面的，所以必须只有1个根标签。以上的 h1和div都不归vue负责。<br>
    <h2>
        {{sayHello}} <br>
        {{sayEating}}<br>
        {{lightLine}}<br>
    </h2>

</div>
<script>
    //使用 jQuery
    $(function () {
        $("#jq-helloword").text("你好,世界");
        //jq的思想。 找到名称是idxox的DOM， 给他添加数据
        //如果我想改变显示效果，改成 你好，超市，需要 改变jq的代码。
        //那么比较繁琐，因为你好，世界，没有存 统一的变量的地方
        //var str=”你好，世界，njg:有个难题，数据没有统一的位置可以存储

        //学习vue,vue 和Java 很像很像
        var vm=new Vue({
            //new vue() 中，小括弧中，一般放到都是{},而大括弧就是json ,对象
            //这个大括弧中，放的就是vue的选项，选项在vue官网可以查看
            el:"#app"//把HTML中的div id为app 的dom元素作为了挂载点
                    //什么叫做挂载点: vue 是以数据驱动的， new vue中都是诞生数据
                    //有了数据， 就需要一个dom元素，显示数据，张三是源数据。
            ,data:{
                sayHello:"你好世界",
                sayEating:"加油，干饭",
                lightLine:"发射动感光波"
            }
    });
    })
</script>
</body>
</html>
