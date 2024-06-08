package com.ruoyi.web.controller.system;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysNotice;
import com.ruoyi.system.service.ISysNoticeService;
import com.ruoyi.system.domain.SysRemark;//by jinx 20240514.2
import com.ruoyi.system.service.ISysRemarkService;//by jinx 20240514.2
import com.ruoyi.system.domain.SysUserRemark;
import com.ruoyi.system.service.ISysUserRemarkService;
/**
 * 公告 信息操作处理
 *
 * @author ruoyi
 */
@RestController
@RequestMapping("/system/notice")
public class SysNoticeController extends BaseController
{
    @Autowired
    private ISysNoticeService noticeService;
    @Autowired
    private ISysRemarkService sysRemarkService;
    @Autowired
    private ISysUserRemarkService sysUserRemarkService;
    /**
     * 获取通知公告列表
     */
    @PreAuthorize("@ss.hasPermi('system:notice:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysNotice notice)
    {
        startPage();
        List<SysNotice> list = noticeService.selectNoticeList(notice);
        return getDataTable(list);
    }

    /**
     * 根据通知公告编号获取详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:notice:query')")
    @GetMapping(value = "/{noticeId}")
    public AjaxResult getInfo(@PathVariable Long noticeId)
    {
        return success(noticeService.selectNoticeById(noticeId));
    }

    /**
     * 新增通知公告
     */
    @PreAuthorize("@ss.hasPermi('system:notice:add')")
    @Log(title = "通知公告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysNotice notice)
    {

        return toAjax(noticeService.insertNotice(notice));
    }

    /**
     * 修改通知公告
     */
    @PreAuthorize("@ss.hasPermi('system:notice:edit')")
    @Log(title = "通知公告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysNotice notice)
    {
        notice.setUpdateBy(getUsername());
        return toAjax(noticeService.updateNotice(notice));
    }

    /**
     * 删除通知公告
     */
    /**
     * 删除通知公告 by jinx 20240514.2
     */
    @PreAuthorize("@ss.hasPermi('system:notice:remove')")
    @Log(title = "通知公告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{noticeIds}")
    public AjaxResult remove(@PathVariable Long[] noticeIds) {
        // 循环处理每个 noticeId
        for (Long noticeId : noticeIds) {
            // 根据 noticeId 查询通知公告对象
            SysNotice notice = noticeService.selectNoticeById(noticeId);
            if (notice != null) {
                // 获取通知公告的内容
                String noticeContent = notice.getRemark();
                // 将内容转换为 long 类型
                long remarkId = Long.parseLong(noticeContent);
                // 调用删除备注的方法
                sysRemarkService.deleteSysRemarkByRemarkIds(new Long[]{remarkId});
                sysUserRemarkService.deleteSysUserRemarkByRemarkIds(new Long[]{remarkId});
            }
        }
        // 删除通知公告

        return toAjax(noticeService.deleteNoticeByIds(noticeIds));
    }

    //by jinx 20240514.2
    @PreAuthorize("@ss.hasPermi('system:notice:remove')")
    @Log(title = "通知公告", businessType = BusinessType.DELETE)
    @DeleteMapping("/next/{noticeIds}")
    public AjaxResult removeing(@PathVariable Long[] noticeIds)
    {

        return toAjax(noticeService.deleteNoticeByIds(noticeIds));
    }
}
