package com.node.eduoa.enums;

/**
 *
 * User: linfeng at Administrator
 * Date: 13-7-14
 * Time: 下午11:34
 * To change this template use File | Settings | File Templates.
 */
public enum ApplyStatusEnum {

    Uncommitted("未提交"), Submitted("已提交");

    private String text;

    ApplyStatusEnum(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public int getIndex() {
        return ordinal();
    }

    // 获得 enum 对象
    public static ApplyStatusEnum valueByIndex(int index) {
        for (ApplyStatusEnum typeEnum : ApplyStatusEnum.values()) {
            if (typeEnum.getIndex() == index) {
                return typeEnum;
            }
        }
        return null;
    }

    // 根据全名获得 enum 对象
    public static ApplyStatusEnum valueByText(String text) {
        for (ApplyStatusEnum typeEnum : ApplyStatusEnum.values()) {
            if (typeEnum.getText().equals(text)) {
                return typeEnum;
            }
        }
        return null;
    }

}