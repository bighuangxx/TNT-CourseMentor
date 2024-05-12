package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 没用对象 sys_user_remark
 * 
 * @author ruoyi
 * @date 2024-05-12
 */
public class SysUserRemark extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 评论id */
    private Long remarkId;

    /** 用户id */
    private Long userId;

    /** 1表示点赞，2表示举报 */
    @Excel(name = "1表示点赞，2表示举报")
    private Long likeOrReport;

    public void setRemarkId(Long remarkId) 
    {
        this.remarkId = remarkId;
    }

    public Long getRemarkId() 
    {
        return remarkId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setLikeOrReport(Long likeOrReport) 
    {
        this.likeOrReport = likeOrReport;
    }

    public Long getLikeOrReport() 
    {
        return likeOrReport;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("remarkId", getRemarkId())
            .append("userId", getUserId())
            .append("likeOrReport", getLikeOrReport())
            .toString();
    }
}
