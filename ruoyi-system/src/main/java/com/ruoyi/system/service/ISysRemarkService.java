package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.SysRemark;

/**
 * 评论Service接口
 *
 * @author ruoyi
 * @date 2024-05-11
 */
public interface ISysRemarkService
{
    /**
     * 查询评论
     *
     * @param remarkId 评论主键
     * @return 评论
     */
    public SysRemark selectSysRemarkByRemarkId(Long remarkId);

    /**
     * 查询评论列表
     *
     * @param sysRemark 评论
     * @return 评论集合
     */
    public List<SysRemark> selectSysRemarkList(SysRemark sysRemark);
    public List<SysRemark> selectSysRemarkListByUsername(String username);
    /**
     * 新增评论
     *
     * @param sysRemark 评论
     * @return 结果
     */
    public int insertSysRemark(SysRemark sysRemark);

    /**
     * 修改评论
     *
     * @param sysRemark 评论
     * @return 结果
     */
    public int updateSysRemark(SysRemark sysRemark);

    /**
     * 批量删除评论
     *
     * @param remarkIds 需要删除的评论主键集合
     * @return 结果
     */
    public int deleteSysRemarkByRemarkIds(Long[] remarkIds);

    /**
     * 删除评论信息
     *
     * @param remarkId 评论主键
     * @return 结果
     */
    public int deleteSysRemarkByRemarkId(Long remarkId);

    /**
     * 根据用户ID和父评论ID查询评论是否存在 by jinx 20240513
     *

     * @return 如果存在返回1，否则返回0
     */
    public int checkSysRemarkExistence(SysRemark sysRemark);

    /**
     * 根据用户ID和父评论ID查询评论是否存在 by firefly 20240514
     *
     * @return point的平均数
     */
    public Double selectAveragePoint(Long remarkId);

    /**
     * 按照时间升序/降序排列评论 by firefly 20240515
     *
     * return 列表
     */
    public List<SysRemark> selectSysRemarkListByTimeASC(SysRemark sysRemark);
    public List<SysRemark> selectSysRemarkListByTimeDESC(SysRemark sysRemark);
}
