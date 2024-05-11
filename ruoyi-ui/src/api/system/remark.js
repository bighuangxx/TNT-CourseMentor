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
