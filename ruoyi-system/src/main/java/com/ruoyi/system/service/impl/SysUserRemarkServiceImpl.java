package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysUserRemarkMapper;
import com.ruoyi.system.domain.SysUserRemark;
import com.ruoyi.system.service.ISysUserRemarkService;

/**
 * 没用Service业务层处理
 *
 * @author ruoyi
 * @date 2024-05-12
 */
@Service
public class SysUserRemarkServiceImpl implements ISysUserRemarkService
{
    @Autowired
    private SysUserRemarkMapper sysUserRemarkMapper;

    /**
     * 查询没用
     *
     * @param remarkId 没用主键
     * @return 没用
     */
    @Override
    public SysUserRemark selectSysUserRemarkByRemarkId(Long remarkId)
    {
        return sysUserRemarkMapper.selectSysUserRemarkByRemarkId(remarkId);
    }

    /**
     * 查询没用列表
     *
     * @param sysUserRemark 没用
     * @return 没用
     */
    @Override
    public List<SysUserRemark> selectSysUserRemarkList(SysUserRemark sysUserRemark)
    {
        return sysUserRemarkMapper.selectSysUserRemarkList(sysUserRemark);
    }

    /**
     * 新增没用
     *
     * @param sysUserRemark 没用
     * @return 结果
     */
    @Override
    public int insertSysUserRemark(SysUserRemark sysUserRemark)
    {
        return sysUserRemarkMapper.insertSysUserRemark(sysUserRemark);
    }

    /**
     * 修改没用
     *
     * @param sysUserRemark 没用
     * @return 结果
     */
    @Override
    public int updateSysUserRemark(SysUserRemark sysUserRemark)
    {
        return sysUserRemarkMapper.updateSysUserRemark(sysUserRemark);
    }

    /**
     * 批量删除没用
     *
     * @param remarkIds 需要删除的没用主键
     * @return 结果
     */
    @Override
    public int deleteSysUserRemarkByRemarkIds(Long[] remarkIds)
    {
        return sysUserRemarkMapper.deleteSysUserRemarkByRemarkIds(remarkIds);
    }
    /**
     * 获取指定备注ID和用户ID的 likeOrReport 的值
     * @return likeOrReport 的值，如果不存在则返回0
     */
    @Override
    public int getLikeOrReportValue(SysUserRemark sysUserRemark) {

        return sysUserRemarkMapper.getLikeOrReportValue(sysUserRemark);
    }
    /**
     * 删除没用信息
     *
     * @param remarkId 没用主键
     * @return 结果
     */
    @Override
    public int deleteSysUserRemarkByRemarkId(Long remarkId)
    {
        return sysUserRemarkMapper.deleteSysUserRemarkByRemarkId(remarkId);
    }

    /**
     * 处理举报
     *
     * @param sysUserRemark 没用  by jinx 20240514
     * @return 结果
     */
    @Override
    public int getReportValue(SysUserRemark sysUserRemark) {
        return sysUserRemarkMapper.getReportValue(sysUserRemark);
    }

}
