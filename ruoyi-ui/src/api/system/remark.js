import request from '@/utils/request'

// 查询评论列表
export function listRemark(query) {
  return request({
    url: '/system/remark/list',
    method: 'get',
    params: query
  })
}

// 查询评论详细
export function getRemark(remarkId) {
  return request({
    url: '/system/remark/' + remarkId,
    method: 'get'
  })
}

// 新增评论
export function addRemark(data) {
  return request({
    url: '/system/remark',
    method: 'post',
    data: data
  })
}

// 修改评论
export function updateRemark(data) {
  return request({
    url: '/system/remark',
    method: 'put',
    data: data
  })
}

// 删除评论
export function delRemark(remarkId) {
  return request({
    url: '/system/remark/' + remarkId,
    method: 'delete'
  })
}
// 查询当前用户的评论列表
export function listRemarkByUsername() {
  return request({
    url: '/system/remark/listByUsername',
    method: 'get'
  })
}
// 点赞或取消点赞评论
export function likeOrCancelLike(remarkId) {
  return request({
    url: '/system/remark/' + remarkId,
    method: 'post'
  })
}
// 获取评论点赞状态
export function getLikeValue(remarkId) {
  return request({
    url: '/system/remark/getLikeValue/' + remarkId,
    method: 'get'
  })
}
export function getUserRole() {
  return request({
    url: '/system/remark/getUserRole/',
    method: 'get'
  })
}



// 举报评论 by jinx 20240514
export function reportRemark(remarkId) {
  return request({
    url: '/system/remark/report/' + remarkId,
    method: 'post'
  })
}

