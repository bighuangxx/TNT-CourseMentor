package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysUserRemark;

/**
 * 没用Service接口
 *
 * @author ruoyi
 * @date 2024-05-12
 */
public interface ISysUserRemarkService
{
    /**
     * 查询没用
     *
     * @param remarkId 没用主键
     * @return 没用
     */
    public SysUserRemark selectSysUserRemarkByRemarkId(Long remarkId);

    /**
     * 查询没用列表
     *
     * @param sysUserRemark 没用
     * @return 没用集合
     */
    public List<SysUserRemark> selectSysUserRemarkList(SysUserRemark sysUserRemark);
    /**
     * 获取指定备注ID和用户ID的 likeOrReport 的值
     *
     * @param remarkId 备注ID
     * @param userId 用户ID
     * @return likeOrReport 的值，如果不存在则返回0
     */
    public int getLikeOrReportValue(SysUserRemark sysUserRemark);

    /**
     * 新增没用
     *
     * @param sysUserRemark 没用
     * @return 结果
     */
    public int insertSysUserRemark(SysUserRemark sysUserRemark);

    /**
     * 修改没用
     *
     * @param sysUserRemark 没用
     * @return 结果
     */
    public int updateSysUserRemark(SysUserRemark sysUserRemark);

    /**
     * 批量删除没用
     *
     * @param remarkIds 需要删除的没用主键集合
     * @return 结果
     */
    public int deleteSysUserRemarkByRemarkIds(Long[] remarkIds);

    /**
     * 删除没用信息
     *
     * @param remarkId 没用主键
     * @return 结果
     */
    public int deleteSysUserRemarkByRemarkId(Long remarkId);

    /**
     * 处理举报
     *
     * @param sysUserRemark 没用 by jinx 20240514
     * @return 结果
     */
    public int getReportValue(SysUserRemark sysUserRemark);
}
