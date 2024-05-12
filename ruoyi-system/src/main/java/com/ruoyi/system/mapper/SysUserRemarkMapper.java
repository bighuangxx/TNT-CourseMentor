package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SysUserRemark;
import org.apache.ibatis.annotations.Mapper;

/**
 * 没用Mapper接口
 *
 * @author ruoyi
 * @date 2024-05-12
 */
@Mapper
public interface SysUserRemarkMapper
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
     * 删除没用
     *
     * @param remarkId 没用主键
     * @return 结果
     */
    public int deleteSysUserRemarkByRemarkId(Long remarkId);

    /**
     * 批量删除没用
     *
     * @param remarkIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysUserRemarkByRemarkIds(Long[] remarkIds);
    /**
     * 根据备注ID和用户ID查询 likeOrReport 的值

     * @return likeOrReport 的值，如果不存在则返回0
     */
    public int getLikeOrReportValue(SysUserRemark sysUserRemark);

}
