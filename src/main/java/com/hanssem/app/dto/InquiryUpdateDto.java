package com.hanssem.app.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class InquiryUpdateDto {
    private Integer qna_number;
    private String qna_title;
    private String qna_content;
    private String qna_category;

    public Integer getQna_number() {
        return qna_number;
    }

    public void setQna_number(Integer qna_number) {
        this.qna_number = qna_number;
    }

    public String getQna_title() {
        return qna_title;
    }

    public void setQna_title(String qna_title) {
        this.qna_title = qna_title;
    }

    public String getQna_content() {
        return qna_content;
    }

    public void setQna_content(String qna_content) {
        this.qna_content = qna_content;
    }

    public String getQna_category() {
        return qna_category;
    }

    public void setQna_category(String qna_category) {
        this.qna_category = qna_category;
    }
}
