<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row">
 <div class="left">
         <div>
             <table>
                 <tr>
                     <th>姓名：</th>
                     <th>刘飞扬</th>
                 </tr>
                 <tr>
                     <th>性别：</th>
                     <th>${user.information.sex }</th>
                 </tr>
                  <tr>
                     <th>身高：</th>
                     <th>${user.information.height }cm</th>
                 </tr>
                  <tr>
                     <th>体重：</th>
                     <th>${user.information.weight }kg</th>
                 </tr>
                 <tr>
                     <th>邮箱：</th>
                     <th>${user.email }</th>
                 </tr>
             </table>
         </div>
         </div>
         <div class="left">
             <table>
                 <tr>
                     <th>生日：</th>
                     <th>${user.information.birthday }</th>
                 </tr>
                 <tr>
                     <th>所在地：</th>
                     <th>${user.information.address.province }${user.information.address.city }${user.information.address.area }</th>
                 </tr>
                 <tr>
                     <th>BMI指数：</th>
                     <th>${user.information.bmi }</th>
                 </tr>
                 <tr>
                     <th>运动基础：</th>
                     <th>${user.information.sports_base }</th>
                 </tr>
                 <tr>
                     <th>联系方式：</th>
                     <th>${user.phone_number }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="info/getInfo" class="button">完善信息</a></th>
                 </tr>
             </table>
         </div>
     </div>
     <div class="our-team">
        <div class="row">
              <div class="col-md-4 col-sm-6">
                  <div class="team-member">
                      <div class="member-thumb">
                          <img src="images/personal/team1.jpg" alt="">
                      </div>
                      <div class="member-infos">
                          <h4 class="member-name">坚持运动</h4>
                          <p class="member-desc">防止脂肪堆积</p>
                      </div>
                  </div>
              </div> <!-- /.col-md-4 -->
              <div class="col-md-4 col-sm-6">
                  <div class="team-member">
                      <div class="member-thumb">
                          <img src="images/personal/team2.jpg" alt="">
                      </div>
                      <div class="member-infos">
                          <h4 class="member-name">健康饮食</h4>      
                          <p class="member-desc">严格控制热量摄入.</p>
                      </div>
                  </div>
              </div> <!-- /.col-md-4 -->
              <div class="col-md-4 col-sm-6">
                  <div class="team-member">
                      <div class="member-thumb">
                          <img src="images/personal/team3.jpg" alt="">
                      </div>
                      <div class="member-infos">
                          <h4 class="member-name">科学减肥</h4>
                          <p class="member-desc">掌握新陈代谢规律减肥更快.</p>
                      </div>
                  </div>
              </div> <!-- /.col-md-4 -->
          </div> <!-- /.row -->
      </div> <!-- /.our-team -->