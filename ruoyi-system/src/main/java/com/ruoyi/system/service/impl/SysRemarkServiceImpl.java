package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysRemarkMapper;
import com.ruoyi.system.domain.SysRemark;
import com.ruoyi.system.service.ISysRemarkService;

/**
 * 评论Service业务层处理
 *
 * @author ruoyi
 * @date 2024-05-11
 */
@Service
public class SysRemarkServiceImpl implements ISysRemarkService
{
    @Autowired
    private SysRemarkMapper sysRemarkMapper;

    /**
     * 查询评论
     *
     * @param remarkId 评论主键
     * @return 评论
     */
    @Override
    public SysRemark selectSysRemarkByRemarkId(Long remarkId)
    {
        return sysRemarkMapper.selectSysRemarkByRemarkId(remarkId);
    }

    /**
     * 查询评论列表
     *
     * @param sysRemark 评论
     * @return 评论
     */
    @Override
    public List<SysRemark> selectSysRemarkList(SysRemark sysRemark)
    {
        return sysRemarkMapper.selectSysRemarkList(sysRemark);
    }
    /**
     * 查询指定用户的评论列表
     *
     * @param username 用户名
     * @return 评论列表
     */
    @Override
    public List<SysRemark> selectSysRemarkListByUsername(String username) {

        return sysRemarkMapper.selectSysRemarkListByUsername(username);
    }
    /**
     * 新增评论
     *
     * @param sysRemark 评论
     * @return 结果
     */
    @Override
    public int insertSysRemark(SysRemark sysRemark)
    {
        sysRemark.setCreateTime(DateUtils.getNowDate());
        return sysRemarkMapper.insertSysRemark(sysRemark);
    }

    /**
     * 修改评论
     *
     * @param sysRemark 评论
     * @return 结果
     */
    @Override
    public int updateSysRemark(SysRemark sysRemark)
    {
        sysRemark.setUpdateTime(DateUtils.getNowDate());
        return sysRemarkMapper.updateSysRemark(sysRemark);
    }

    /**
     * 批量删除评论
     *
     * @param remarkIds 需要删除的评论主键
     * @return 结果
     */
    @Override
    public int deleteSysRemarkByRemarkIds(Long[] remarkIds)
    {
        return sysRemarkMapper.deleteSysRemarkByRemarkIds(remarkIds);
    }

    /**
     * 删除评论信息
     *
     * @param remarkId 评论主键
     * @return 结果
     */
    @Override
    public int deleteSysRemarkByRemarkId(Long remarkId)
    {
        return sysRemarkMapper.deleteSysRemarkByRemarkId(remarkId);
    }
    /**
     * 根据用户ID和父评论ID查询评论是否存在 by jinx 20240513
     *

     * @return 如果存在返回1，否则返回0
     */
    public int checkSysRemarkExistence(SysRemark sysRemark)
    {
        return sysRemarkMapper.checkSysRemarkExistence(sysRemark);
    }
}
