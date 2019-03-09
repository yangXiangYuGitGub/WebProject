<%--
  Created by IntelliJ IDEA.
  User: best
  Date: 2019/3/6
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title id="title">{{title}}</title>
      <script type="text/javascript" src="js/vue.js"></script>
      <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
  </head>
  <body>
        <div  id="app">
            <span v-if="isShow">{{message}}</span>
            <span v-else>123</span>
        </div>

       <div id="two">
           <li v-for="(u,index) in users">编号{{u.id}}----姓名:{{u.name}}</li>
       </div>

        <div id="three">
            <div v-text="message"></div>
            <div v-html="message"></div>
        </div>

        <div id="fors">
            <button v-on:click="show">123</button>
        </div>

        <div id="five">
            <p>{{message}}</p>
            <input v-model="message">
        </div>

        <div id="six">
            <a v-bind:href="url">百度</a>
        </div>

        <div id="seven">
            <select>
                <option v-for="d in depts" :value="d.id">{{d.name}}</option>
            </select>
        </div>

        <div id="eight">
            <el-demo></el-demo>
        </div>
  <script type="text/javascript">


   <!--练习1-->
      var title = new Vue({
          el:"#title",
          data:{
              title:"Vue练习页面"
          }
      });
      var app = new Vue({
          el:"#app",
          data:{
              message:"Vue练习一",
              isShow:true
          }

      });
   <!--练习2-->
      var two = new Vue({
         el:"#two",
         data:{
               users:[
                    {id:1,name:"张三"},
                    {id:2,name:"李四"},
                    {id:3,name:"王五"}
               ]

         }
      });
   <!--练习3-->
      var three = new Vue({
         el:"#three",
         data:{
             message:"<h1>练习3----html标签嵌入</h3>"
         }
      });

   var fors = new Vue({
      el:"#fors",
      data:{
          message:"456789"
      },
      methods:{
          show:function(){
              alert(this.message);
          }
      }
   });
   <!--练习5-->
   var five = new Vue({
       el:"#five",
       data:{
           message:"你好vue"
       }
   });

   <!--练习6-->
      var six = new Vue({
       el :"#six",
          data:{
           url:"http://www.baidu.com"
          }
   });

   <!--练习7-->
      var seven = new Vue({
         el :"#seven",
         data:{
             depts:[
                 {id:1,name:"开发部"},
                 {id:2,name:"运维部"},
                 {id:3,name:"后勤部"},
             ]
         }
      });
   <!--练习8-->
       Vue.component("el-demo",{
            template:"<h1>12312312321313</h1>"
      });
       var eight = new Vue({
           el:"#eight"
       });

  </script>
  </body>
</html>
