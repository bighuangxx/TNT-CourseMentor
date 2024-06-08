<!-- 2024.5.13 -->

<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col :sm="24" :lg="24">
        <h1>欢迎使用课程评价系统</h1>
        <blockquote class="text-warning" style="font-size: 14px">
          欢迎老师和学生们前来使用我们的课程评价系统，为了提供更好的教学和学习体验，我们诚挚邀请您参与评价。

        </blockquote>

        <hr />
      </el-col>
    </el-row>
    <el-divider />
    <el-row :gutter="20">
      <el-col :sm="24" :lg="12" style="padding-left: 20px">
        <h2>课程评价系统简介</h2>
        <p>
          我们的课程评价系统旨在促进教师和学生之间的沟通与合作，提高课程质量和学习效果。教师可以通过系统了解学生对课程的反馈和建议，以便及时调整教学方式和内容；学生可以通过系统匿名地提供对课程的评价和意见，帮助教师更好地理解学生的需求和期望。
        </p>
        <p>
          <b>当前版本:</b> <span>v{{ version }}</span>
        </p>
        <p>
          <el-tag type="danger">免费使用</el-tag>
        </p>
      </el-col>

      <el-col :sm="24" :lg="12" style="padding-left: 50px">
        <el-row>
          <el-col :span="12">
            <h2>技术支持</h2>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="6">
            <h4>前端技术</h4>
            <ul>
              <li>Vue.js</li>
              <li>Element-ui</li>
              <li>Axios</li>
              <li>...</li>
            </ul>
          </el-col>
          <el-col :span="6">
            <h4>后端技术</h4>
            <ul>
              <li>Node.js</li>
              <li>Express</li>
              <li>MongoDB</li>
              <li>...</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-divider />
    <el-row :gutter="20">
      <el-col :xs="24" :sm="24" :md="12" :lg="8">
        <el-card class="update-log">
          <div slot="header" class="clearfix">
            <span>联系方式</span>
          </div>
          <div class="body">
            <p>
              <i class="el-icon-chat-dot-round"></i> 技术支持邮箱：<a
                href="https://qzone.qq.com/"
                >1250172613@qq.com</a
              >
            </p>
          </div>
        </el-card>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      version: "1.0.0"
    };
  },
  methods: {
    goTarget(url) {
      window.location.href = url;
    }
  }
};
</script>

<style>
/* Add your styles here */
</style>
